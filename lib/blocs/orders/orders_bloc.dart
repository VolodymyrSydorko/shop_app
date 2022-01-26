import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/models/cart_item.dart';
import 'package:shop_app/models/order_item.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc() : super(const OrdersState()) {
    on<_AddOrder>(_addOrder);
  }

  FutureOr<void> _addOrder(_AddOrder event, Emitter<OrdersState> emit) {
    emit(state.copyWith(orders: [
      OrderItem(
        id: DateTime.now().toString(),
        amount: event.total,
        dateTime: DateTime.now(),
        products: event.cartProducts,
      ),
      ...state.orders,
    ]));
  }
}
