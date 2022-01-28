import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/helpers/constants.dart';
import 'package:shop_app/helpers/extensions.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/services/services.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc({
    required this.productsRepository,
  }) : super(const FavoritesState()) {
    on<LoadFavorites>(_loadFavorites);
    on<ToggleFavorite>(_toggleFavorite);
  }

  final ProductsRepository productsRepository;

  late StreamSubscription subscription;

  FutureOr<void> _loadFavorites(
      LoadFavorites event, Emitter<FavoritesState> emit) async {
    emit(state.copyWith(status: FavoriteStatus.loading));

    try {
      final favorites = await productsRepository.getFavorites();

      emit(
          state.copyWith(status: FavoriteStatus.success, favorites: favorites));
    } on Exception {
      emit(state.copyWith(
          status: FavoriteStatus.failure,
          error: Constants.errorDefaultMessage));
    }
  }

  FutureOr<void> _toggleFavorite(
      ToggleFavorite event, Emitter<FavoritesState> emit) {
    emit(
      state.copyWith(
        favorites: state.favorites.replaceWhere(
          (product) => product.id == event.product.id,
          (product) => product.copyWith(isFavorite: !product.isFavorite),
        ),
      ),
    );
  }

  Product findById(String id) {
    return state.favorites.firstWhere((element) => element.id == id);
  }
}
