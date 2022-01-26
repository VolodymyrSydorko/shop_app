part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addItem(
      String productId, String title, double price) = AddItem;
  const factory CartEvent.removeSingleItem(String productId) = RemoveSingleItem;
  const factory CartEvent.removeItem(String productId) = RemoveItem;
  const factory CartEvent.clear() = ClearCart;
}
