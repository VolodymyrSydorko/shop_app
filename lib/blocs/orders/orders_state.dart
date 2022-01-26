part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default([]) List<OrderItem> orders,
  }) = _OrdersState;
}
