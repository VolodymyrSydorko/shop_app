// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrdersEventTearOff {
  const _$OrdersEventTearOff();

  _AddOrder addOrder(List<CartItem> cartProducts, double total) {
    return _AddOrder(
      cartProducts,
      total,
    );
  }
}

/// @nodoc
const $OrdersEvent = _$OrdersEventTearOff();

/// @nodoc
mixin _$OrdersEvent {
  List<CartItem> get cartProducts => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartProducts, double total)
        addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CartItem> cartProducts, double total)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartProducts, double total)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrder value) addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddOrder value)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrder value)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersEventCopyWith<OrdersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res>;
  $Res call({List<CartItem> cartProducts, double total});
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res> implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  final OrdersEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersEvent) _then;

  @override
  $Res call({
    Object? cartProducts = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      cartProducts: cartProducts == freezed
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$AddOrderCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$AddOrderCopyWith(_AddOrder value, $Res Function(_AddOrder) then) =
      __$AddOrderCopyWithImpl<$Res>;
  @override
  $Res call({List<CartItem> cartProducts, double total});
}

/// @nodoc
class __$AddOrderCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements _$AddOrderCopyWith<$Res> {
  __$AddOrderCopyWithImpl(_AddOrder _value, $Res Function(_AddOrder) _then)
      : super(_value, (v) => _then(v as _AddOrder));

  @override
  _AddOrder get _value => super._value as _AddOrder;

  @override
  $Res call({
    Object? cartProducts = freezed,
    Object? total = freezed,
  }) {
    return _then(_AddOrder(
      cartProducts == freezed
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AddOrder implements _AddOrder {
  const _$_AddOrder(this.cartProducts, this.total);

  @override
  final List<CartItem> cartProducts;
  @override
  final double total;

  @override
  String toString() {
    return 'OrdersEvent.addOrder(cartProducts: $cartProducts, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddOrder &&
            const DeepCollectionEquality()
                .equals(other.cartProducts, cartProducts) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cartProducts),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$AddOrderCopyWith<_AddOrder> get copyWith =>
      __$AddOrderCopyWithImpl<_AddOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartProducts, double total)
        addOrder,
  }) {
    return addOrder(cartProducts, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CartItem> cartProducts, double total)? addOrder,
  }) {
    return addOrder?.call(cartProducts, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartProducts, double total)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(cartProducts, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrder value) addOrder,
  }) {
    return addOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddOrder value)? addOrder,
  }) {
    return addOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(this);
    }
    return orElse();
  }
}

abstract class _AddOrder implements OrdersEvent {
  const factory _AddOrder(List<CartItem> cartProducts, double total) =
      _$_AddOrder;

  @override
  List<CartItem> get cartProducts;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$AddOrderCopyWith<_AddOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrdersStateTearOff {
  const _$OrdersStateTearOff();

  _OrdersState call({List<OrderItem> orders = const []}) {
    return _OrdersState(
      orders: orders,
    );
  }
}

/// @nodoc
const $OrdersState = _$OrdersStateTearOff();

/// @nodoc
mixin _$OrdersState {
  List<OrderItem> get orders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res>;
  $Res call({List<OrderItem> orders});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res> implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  final OrdersState _value;
  // ignore: unused_field
  final $Res Function(OrdersState) _then;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc
abstract class _$OrdersStateCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$OrdersStateCopyWith(
          _OrdersState value, $Res Function(_OrdersState) then) =
      __$OrdersStateCopyWithImpl<$Res>;
  @override
  $Res call({List<OrderItem> orders});
}

/// @nodoc
class __$OrdersStateCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
    implements _$OrdersStateCopyWith<$Res> {
  __$OrdersStateCopyWithImpl(
      _OrdersState _value, $Res Function(_OrdersState) _then)
      : super(_value, (v) => _then(v as _OrdersState));

  @override
  _OrdersState get _value => super._value as _OrdersState;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_OrdersState(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc

class _$_OrdersState implements _OrdersState {
  const _$_OrdersState({this.orders = const []});

  @JsonKey()
  @override
  final List<OrderItem> orders;

  @override
  String toString() {
    return 'OrdersState(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrdersState &&
            const DeepCollectionEquality().equals(other.orders, orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orders));

  @JsonKey(ignore: true)
  @override
  _$OrdersStateCopyWith<_OrdersState> get copyWith =>
      __$OrdersStateCopyWithImpl<_OrdersState>(this, _$identity);
}

abstract class _OrdersState implements OrdersState {
  const factory _OrdersState({List<OrderItem> orders}) = _$_OrdersState;

  @override
  List<OrderItem> get orders;
  @override
  @JsonKey(ignore: true)
  _$OrdersStateCopyWith<_OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
