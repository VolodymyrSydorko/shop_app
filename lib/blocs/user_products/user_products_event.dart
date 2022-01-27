part of 'user_products_bloc.dart';

@freezed
class UserProductsEvent with _$UserProductsEvent {
  const factory UserProductsEvent.load() = LoadUserProducts;
  const factory UserProductsEvent.addProduct(Product product) = AddProduct;
  const factory UserProductsEvent.editProduct(
      String id, Product editedProduct) = EditProduct;
  const factory UserProductsEvent.deleteProduct(String id) = DeleteProduct;
}
