import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/helpers/constants.dart';
import 'package:shop_app/helpers/extensions.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/services/services.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({
    required this.productsRepository,
  }) : super(const ProductsState()) {
    on<LoadProducts>(_loadProducts);
    on<ToggleFavorite>(_toggleFavorite);
  }

  final ProductsRepository productsRepository;

  FutureOr<void> _loadProducts(
      LoadProducts event, Emitter<ProductsState> emit) async {
    emit(state.copyWith(status: ProductStatus.loading));

    try {
      final products = await productsRepository.getAllProducts();

      emit(state.copyWith(status: ProductStatus.success, products: products));
    } on Exception {
      emit(state.copyWith(
          status: ProductStatus.failure, error: Constants.errorDefaultMessage));
    }
  }

  FutureOr<void> _toggleFavorite(
      ToggleFavorite event, Emitter<ProductsState> emit) {
    emit(
      state.copyWith(
        products: state.products.replaceWhere(
          (product) => product.id == event.product.id,
          (product) => product.copyWith(isFavorite: !product.isFavorite),
        ),
      ),
    );
  }
}
