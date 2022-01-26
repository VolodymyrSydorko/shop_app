part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.load() = LoadProducts;
  const factory ProductsEvent.toggleFavorite(Product product) = ToggleFavorite;
}
