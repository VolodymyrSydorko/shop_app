import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem(
    String id,
    String title,
    int quantity,
    double price,
  ) = _CartItem;
}
