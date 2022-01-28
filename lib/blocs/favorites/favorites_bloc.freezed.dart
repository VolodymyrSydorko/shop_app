// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoritesEventTearOff {
  const _$FavoritesEventTearOff();

  LoadFavorites load() {
    return const LoadFavorites();
  }

  ToggleFavorite toggleFavorite(Product product) {
    return ToggleFavorite(
      product,
    );
  }
}

/// @nodoc
const $FavoritesEvent = _$FavoritesEventTearOff();

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Product product) toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFavorites value) load,
    required TResult Function(ToggleFavorite value) toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadFavorites value)? load,
    TResult Function(ToggleFavorite value)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFavorites value)? load,
    TResult Function(ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  final FavoritesEvent _value;
  // ignore: unused_field
  final $Res Function(FavoritesEvent) _then;
}

/// @nodoc
abstract class $LoadFavoritesCopyWith<$Res> {
  factory $LoadFavoritesCopyWith(
          LoadFavorites value, $Res Function(LoadFavorites) then) =
      _$LoadFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadFavoritesCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res>
    implements $LoadFavoritesCopyWith<$Res> {
  _$LoadFavoritesCopyWithImpl(
      LoadFavorites _value, $Res Function(LoadFavorites) _then)
      : super(_value, (v) => _then(v as LoadFavorites));

  @override
  LoadFavorites get _value => super._value as LoadFavorites;
}

/// @nodoc

class _$LoadFavorites implements LoadFavorites {
  const _$LoadFavorites();

  @override
  String toString() {
    return 'FavoritesEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Product product) toggleFavorite,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? toggleFavorite,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFavorites value) load,
    required TResult Function(ToggleFavorite value) toggleFavorite,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadFavorites value)? load,
    TResult Function(ToggleFavorite value)? toggleFavorite,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFavorites value)? load,
    TResult Function(ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadFavorites implements FavoritesEvent {
  const factory LoadFavorites() = _$LoadFavorites;
}

/// @nodoc
abstract class $ToggleFavoriteCopyWith<$Res> {
  factory $ToggleFavoriteCopyWith(
          ToggleFavorite value, $Res Function(ToggleFavorite) then) =
      _$ToggleFavoriteCopyWithImpl<$Res>;
  $Res call({Product product});
}

/// @nodoc
class _$ToggleFavoriteCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res>
    implements $ToggleFavoriteCopyWith<$Res> {
  _$ToggleFavoriteCopyWithImpl(
      ToggleFavorite _value, $Res Function(ToggleFavorite) _then)
      : super(_value, (v) => _then(v as ToggleFavorite));

  @override
  ToggleFavorite get _value => super._value as ToggleFavorite;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(ToggleFavorite(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$ToggleFavorite implements ToggleFavorite {
  const _$ToggleFavorite(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'FavoritesEvent.toggleFavorite(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToggleFavorite &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  $ToggleFavoriteCopyWith<ToggleFavorite> get copyWith =>
      _$ToggleFavoriteCopyWithImpl<ToggleFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Product product) toggleFavorite,
  }) {
    return toggleFavorite(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? toggleFavorite,
  }) {
    return toggleFavorite?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFavorites value) load,
    required TResult Function(ToggleFavorite value) toggleFavorite,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadFavorites value)? load,
    TResult Function(ToggleFavorite value)? toggleFavorite,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFavorites value)? load,
    TResult Function(ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class ToggleFavorite implements FavoritesEvent {
  const factory ToggleFavorite(Product product) = _$ToggleFavorite;

  Product get product;
  @JsonKey(ignore: true)
  $ToggleFavoriteCopyWith<ToggleFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FavoritesStateTearOff {
  const _$FavoritesStateTearOff();

  _FavoritesState call(
      {FavoriteStatus status = FavoriteStatus.initial,
      List<Product> favorites = const [],
      String error = ''}) {
    return _FavoritesState(
      status: status,
      favorites: favorites,
      error: error,
    );
  }
}

/// @nodoc
const $FavoritesState = _$FavoritesStateTearOff();

/// @nodoc
mixin _$FavoritesState {
  FavoriteStatus get status => throw _privateConstructorUsedError;
  List<Product> get favorites => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res>;
  $Res call({FavoriteStatus status, List<Product> favorites, String error});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  final FavoritesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? favorites = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoriteStatus,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FavoritesStateCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$FavoritesStateCopyWith(
          _FavoritesState value, $Res Function(_FavoritesState) then) =
      __$FavoritesStateCopyWithImpl<$Res>;
  @override
  $Res call({FavoriteStatus status, List<Product> favorites, String error});
}

/// @nodoc
class __$FavoritesStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements _$FavoritesStateCopyWith<$Res> {
  __$FavoritesStateCopyWithImpl(
      _FavoritesState _value, $Res Function(_FavoritesState) _then)
      : super(_value, (v) => _then(v as _FavoritesState));

  @override
  _FavoritesState get _value => super._value as _FavoritesState;

  @override
  $Res call({
    Object? status = freezed,
    Object? favorites = freezed,
    Object? error = freezed,
  }) {
    return _then(_FavoritesState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoriteStatus,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FavoritesState implements _FavoritesState {
  const _$_FavoritesState(
      {this.status = FavoriteStatus.initial,
      this.favorites = const [],
      this.error = ''});

  @JsonKey()
  @override
  final FavoriteStatus status;
  @JsonKey()
  @override
  final List<Product> favorites;
  @JsonKey()
  @override
  final String error;

  @override
  String toString() {
    return 'FavoritesState(status: $status, favorites: $favorites, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoritesState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.favorites, favorites) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(favorites),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$FavoritesStateCopyWith<_FavoritesState> get copyWith =>
      __$FavoritesStateCopyWithImpl<_FavoritesState>(this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  const factory _FavoritesState(
      {FavoriteStatus status,
      List<Product> favorites,
      String error}) = _$_FavoritesState;

  @override
  FavoriteStatus get status;
  @override
  List<Product> get favorites;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$FavoritesStateCopyWith<_FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}
