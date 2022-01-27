import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/services/services.dart';

part 'search_product_event.dart';
part 'search_product_state.dart';
part 'search_product_bloc.freezed.dart';

class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  SearchProductBloc({
    required this.productsRepository,
  }) : super(const SearchProductState()) {
    on<SearchProduct>(_searchProduct);
    on<ClearRecentSearches>(_clearRecentSearches);
  }

  final ProductsRepository productsRepository;

  FutureOr<void> _searchProduct(
      SearchProduct event, Emitter<SearchProductState> emit) async {
    try {
      if (event.query.isEmpty) {
        emit(
          state.copyWith(status: SearchProductStatus.success, products: []),
        );

        return;
      }

      emit(state.copyWith(status: SearchProductStatus.searching));

      final searchedProducts =
          await productsRepository.searchProduct(event.query, event.category);

      emit(state.copyWith(
          status: SearchProductStatus.success,
          products: searchedProducts,
          recentSearches: {...state.recentSearches, event.query}));
    } catch (_) {
      emit(state.copyWith(status: SearchProductStatus.failure));
    }
  }

  FutureOr<void> _clearRecentSearches(
      ClearRecentSearches event, Emitter<SearchProductState> emit) {
    emit(state.copyWith(recentSearches: {}));
  }
}
