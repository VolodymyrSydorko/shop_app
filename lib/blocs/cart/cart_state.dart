part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default({}) Map<String, CartItem> items,
    @Default(0) totalAmount,
  }) = _CartState;
}
