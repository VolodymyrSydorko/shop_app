part of 'products_bloc.dart';

enum ProductStatus { initial, loading, success, failure }

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(ProductStatus.initial) ProductStatus status,
    @Default([]) List<Product> products,
    @Default('') String error,
  }) = _ProductsState;
}
