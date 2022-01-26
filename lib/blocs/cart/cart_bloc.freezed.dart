// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  AddItem addItem(String productId, String title, double price) {
    return AddItem(
      productId,
      title,
      price,
    );
  }

  RemoveSingleItem removeSingleItem(String productId) {
    return RemoveSingleItem(
      productId,
    );
  }

  RemoveItem removeItem(String productId) {
    return RemoveItem(
      productId,
    );
  }

  ClearCart clear() {
    return const ClearCart();
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addItem,
    required TResult Function(String productId) removeSingleItem,
    required TResult Function(String productId) removeItem,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItem value) addItem,
    required TResult Function(RemoveSingleItem value) removeSingleItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class $AddItemCopyWith<$Res> {
  factory $AddItemCopyWith(AddItem value, $Res Function(AddItem) then) =
      _$AddItemCopyWithImpl<$Res>;
  $Res call({String productId, String title, double price});
}

/// @nodoc
class _$AddItemCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $AddItemCopyWith<$Res> {
  _$AddItemCopyWithImpl(AddItem _value, $Res Function(AddItem) _then)
      : super(_value, (v) => _then(v as AddItem));

  @override
  AddItem get _value => super._value as AddItem;

  @override
  $Res call({
    Object? productId = freezed,
    Object? title = freezed,
    Object? price = freezed,
  }) {
    return _then(AddItem(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddItem implements AddItem {
  const _$AddItem(this.productId, this.title, this.price);

  @override
  final String productId;
  @override
  final String title;
  @override
  final double price;

  @override
  String toString() {
    return 'CartEvent.addItem(productId: $productId, title: $title, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddItem &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  $AddItemCopyWith<AddItem> get copyWith =>
      _$AddItemCopyWithImpl<AddItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addItem,
    required TResult Function(String productId) removeSingleItem,
    required TResult Function(String productId) removeItem,
    required TResult Function() clear,
  }) {
    return addItem(productId, title, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
  }) {
    return addItem?.call(productId, title, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(productId, title, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItem value) addItem,
    required TResult Function(RemoveSingleItem value) removeSingleItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clear,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class AddItem implements CartEvent {
  const factory AddItem(String productId, String title, double price) =
      _$AddItem;

  String get productId;
  String get title;
  double get price;
  @JsonKey(ignore: true)
  $AddItemCopyWith<AddItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveSingleItemCopyWith<$Res> {
  factory $RemoveSingleItemCopyWith(
          RemoveSingleItem value, $Res Function(RemoveSingleItem) then) =
      _$RemoveSingleItemCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class _$RemoveSingleItemCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $RemoveSingleItemCopyWith<$Res> {
  _$RemoveSingleItemCopyWithImpl(
      RemoveSingleItem _value, $Res Function(RemoveSingleItem) _then)
      : super(_value, (v) => _then(v as RemoveSingleItem));

  @override
  RemoveSingleItem get _value => super._value as RemoveSingleItem;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(RemoveSingleItem(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveSingleItem implements RemoveSingleItem {
  const _$RemoveSingleItem(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.removeSingleItem(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveSingleItem &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  $RemoveSingleItemCopyWith<RemoveSingleItem> get copyWith =>
      _$RemoveSingleItemCopyWithImpl<RemoveSingleItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addItem,
    required TResult Function(String productId) removeSingleItem,
    required TResult Function(String productId) removeItem,
    required TResult Function() clear,
  }) {
    return removeSingleItem(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
  }) {
    return removeSingleItem?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (removeSingleItem != null) {
      return removeSingleItem(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItem value) addItem,
    required TResult Function(RemoveSingleItem value) removeSingleItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clear,
  }) {
    return removeSingleItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
  }) {
    return removeSingleItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
    required TResult orElse(),
  }) {
    if (removeSingleItem != null) {
      return removeSingleItem(this);
    }
    return orElse();
  }
}

abstract class RemoveSingleItem implements CartEvent {
  const factory RemoveSingleItem(String productId) = _$RemoveSingleItem;

  String get productId;
  @JsonKey(ignore: true)
  $RemoveSingleItemCopyWith<RemoveSingleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveItemCopyWith<$Res> {
  factory $RemoveItemCopyWith(
          RemoveItem value, $Res Function(RemoveItem) then) =
      _$RemoveItemCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class _$RemoveItemCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $RemoveItemCopyWith<$Res> {
  _$RemoveItemCopyWithImpl(RemoveItem _value, $Res Function(RemoveItem) _then)
      : super(_value, (v) => _then(v as RemoveItem));

  @override
  RemoveItem get _value => super._value as RemoveItem;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(RemoveItem(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveItem implements RemoveItem {
  const _$RemoveItem(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.removeItem(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveItem &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  $RemoveItemCopyWith<RemoveItem> get copyWith =>
      _$RemoveItemCopyWithImpl<RemoveItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addItem,
    required TResult Function(String productId) removeSingleItem,
    required TResult Function(String productId) removeItem,
    required TResult Function() clear,
  }) {
    return removeItem(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
  }) {
    return removeItem?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItem value) addItem,
    required TResult Function(RemoveSingleItem value) removeSingleItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clear,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class RemoveItem implements CartEvent {
  const factory RemoveItem(String productId) = _$RemoveItem;

  String get productId;
  @JsonKey(ignore: true)
  $RemoveItemCopyWith<RemoveItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearCartCopyWith<$Res> {
  factory $ClearCartCopyWith(ClearCart value, $Res Function(ClearCart) then) =
      _$ClearCartCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $ClearCartCopyWith<$Res> {
  _$ClearCartCopyWithImpl(ClearCart _value, $Res Function(ClearCart) _then)
      : super(_value, (v) => _then(v as ClearCart));

  @override
  ClearCart get _value => super._value as ClearCart;
}

/// @nodoc

class _$ClearCart implements ClearCart {
  const _$ClearCart();

  @override
  String toString() {
    return 'CartEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId, String title, double price)
        addItem,
    required TResult Function(String productId) removeSingleItem,
    required TResult Function(String productId) removeItem,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId, String title, double price)? addItem,
    TResult Function(String productId)? removeSingleItem,
    TResult Function(String productId)? removeItem,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItem value) addItem,
    required TResult Function(RemoveSingleItem value) removeSingleItem,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(ClearCart value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItem value)? addItem,
    TResult Function(RemoveSingleItem value)? removeSingleItem,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(ClearCart value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements CartEvent {
  const factory ClearCart() = _$ClearCart;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call(
      {Map<String, CartItem> items = const {}, dynamic totalAmount = 0}) {
    return _CartState(
      items: items,
      totalAmount: totalAmount,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  Map<String, CartItem> get items => throw _privateConstructorUsedError;
  dynamic get totalAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({Map<String, CartItem> items, dynamic totalAmount});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, CartItem>,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, CartItem> items, dynamic totalAmount});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_CartState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, CartItem>,
      totalAmount: totalAmount == freezed ? _value.totalAmount : totalAmount,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState({this.items = const {}, this.totalAmount = 0});

  @JsonKey()
  @override
  final Map<String, CartItem> items;
  @JsonKey()
  @override
  final dynamic totalAmount;

  @override
  String toString() {
    return 'CartState(items: $items, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartState &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(totalAmount));

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState({Map<String, CartItem> items, dynamic totalAmount}) =
      _$_CartState;

  @override
  Map<String, CartItem> get items;
  @override
  dynamic get totalAmount;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
