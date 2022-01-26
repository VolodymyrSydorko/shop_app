import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/models/cart_item.dart';

part 'order_item.freezed.dart';

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String id,
    required double amount,
    required List<CartItem> products,
    required DateTime dateTime,
  }) = _OrderItem;
}
