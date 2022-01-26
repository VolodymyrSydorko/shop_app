part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.addOrder(
      List<CartItem> cartProducts, double total) = _AddOrder;
}
