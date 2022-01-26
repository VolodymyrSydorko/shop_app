import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/models/cart_item.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState()) {
    on<AddItem>(_addItem);
    on<RemoveSingleItem>(_removeSingleItem);
    on<RemoveItem>(_removeItem);
    on<ClearCart>(_clearCart);
  }

  FutureOr<void> _addItem(AddItem event, Emitter<CartState> emit) {
    final items = state.items;

    if (items.containsKey(event.productId)) {
      emitWithCalculateTotalAmount(
        {...items}..update(
            event.productId,
            (existingCartItem) => CartItem(
              existingCartItem.id,
              existingCartItem.title,
              existingCartItem.quantity + 1,
              existingCartItem.price,
            ),
          ),
        emit,
      );
    } else {
      emitWithCalculateTotalAmount(
        {...items}..putIfAbsent(
            event.productId,
            () => CartItem(
              DateTime.now().toString(),
              event.title,
              1,
              event.price,
            ),
          ),
        emit,
      );
    }
  }

  FutureOr<void> _removeSingleItem(
      RemoveSingleItem event, Emitter<CartState> emit) {
    final items = state.items;

    if (items.containsKey(event.productId)) {
      emitWithCalculateTotalAmount({...items}..remove(event.productId), emit);
    }
  }

  FutureOr<void> _removeItem(RemoveItem event, Emitter<CartState> emit) {
    final items = state.items;

    if (items.containsKey(event.productId)) {
      if (items[event.productId]!.quantity > 1) {
        emitWithCalculateTotalAmount(
            {...items}..update(
                event.productId,
                (existingCartItem) => CartItem(
                  existingCartItem.id,
                  existingCartItem.title,
                  existingCartItem.quantity - 1,
                  existingCartItem.price,
                ),
              ),
            emit);
      } else {
        emitWithCalculateTotalAmount({...items}..remove(event.productId), emit);
      }
    }
  }

  FutureOr<void> _clearCart(ClearCart event, Emitter<CartState> emit) {
    emit(
      state.copyWith(items: {}),
    );
  }

  void emitWithCalculateTotalAmount(
      Map<String, CartItem> items, Emitter<CartState> emit) {
    var total = 0.0;
    items.forEach(
        (key, cartItem) => total += cartItem.price * cartItem.quantity);

    emit(
      state.copyWith(items: items, totalAmount: total),
    );
  }
}
