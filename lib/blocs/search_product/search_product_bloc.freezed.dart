// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchProductEventTearOff {
  const _$SearchProductEventTearOff();

  SearchProduct search(String query, Category category) {
    return SearchProduct(
      query,
      category,
    );
  }

  ClearRecentSearches clearRecentSearches() {
    return const ClearRecentSearches();
  }
}

/// @nodoc
const $SearchProductEvent = _$SearchProductEventTearOff();

/// @nodoc
mixin _$SearchProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, Category category) search,
    required TResult Function() clearRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, Category category)? search,
    TResult Function()? clearRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, Category category)? search,
    TResult Function()? clearRecentSearches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchProduct value) search,
    required TResult Function(ClearRecentSearches value) clearRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchProduct value)? search,
    TResult Function(ClearRecentSearches value)? clearRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProduct value)? search,
    TResult Function(ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductEventCopyWith<$Res> {
  factory $SearchProductEventCopyWith(
          SearchProductEvent value, $Res Function(SearchProductEvent) then) =
      _$SearchProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchProductEventCopyWithImpl<$Res>
    implements $SearchProductEventCopyWith<$Res> {
  _$SearchProductEventCopyWithImpl(this._value, this._then);

  final SearchProductEvent _value;
  // ignore: unused_field
  final $Res Function(SearchProductEvent) _then;
}

/// @nodoc
abstract class $SearchProductCopyWith<$Res> {
  factory $SearchProductCopyWith(
          SearchProduct value, $Res Function(SearchProduct) then) =
      _$SearchProductCopyWithImpl<$Res>;
  $Res call({String query, Category category});
}

/// @nodoc
class _$SearchProductCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res>
    implements $SearchProductCopyWith<$Res> {
  _$SearchProductCopyWithImpl(
      SearchProduct _value, $Res Function(SearchProduct) _then)
      : super(_value, (v) => _then(v as SearchProduct));

  @override
  SearchProduct get _value => super._value as SearchProduct;

  @override
  $Res call({
    Object? query = freezed,
    Object? category = freezed,
  }) {
    return _then(SearchProduct(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$SearchProduct implements SearchProduct {
  const _$SearchProduct(this.query, this.category);

  @override
  final String query;
  @override
  final Category category;

  @override
  String toString() {
    return 'SearchProductEvent.search(query: $query, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchProduct &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  $SearchProductCopyWith<SearchProduct> get copyWith =>
      _$SearchProductCopyWithImpl<SearchProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, Category category) search,
    required TResult Function() clearRecentSearches,
  }) {
    return search(query, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, Category category)? search,
    TResult Function()? clearRecentSearches,
  }) {
    return search?.call(query, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, Category category)? search,
    TResult Function()? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchProduct value) search,
    required TResult Function(ClearRecentSearches value) clearRecentSearches,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchProduct value)? search,
    TResult Function(ClearRecentSearches value)? clearRecentSearches,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProduct value)? search,
    TResult Function(ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchProduct implements SearchProductEvent {
  const factory SearchProduct(String query, Category category) =
      _$SearchProduct;

  String get query;
  Category get category;
  @JsonKey(ignore: true)
  $SearchProductCopyWith<SearchProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearRecentSearchesCopyWith<$Res> {
  factory $ClearRecentSearchesCopyWith(
          ClearRecentSearches value, $Res Function(ClearRecentSearches) then) =
      _$ClearRecentSearchesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearRecentSearchesCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res>
    implements $ClearRecentSearchesCopyWith<$Res> {
  _$ClearRecentSearchesCopyWithImpl(
      ClearRecentSearches _value, $Res Function(ClearRecentSearches) _then)
      : super(_value, (v) => _then(v as ClearRecentSearches));

  @override
  ClearRecentSearches get _value => super._value as ClearRecentSearches;
}

/// @nodoc

class _$ClearRecentSearches implements ClearRecentSearches {
  const _$ClearRecentSearches();

  @override
  String toString() {
    return 'SearchProductEvent.clearRecentSearches()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearRecentSearches);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, Category category) search,
    required TResult Function() clearRecentSearches,
  }) {
    return clearRecentSearches();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, Category category)? search,
    TResult Function()? clearRecentSearches,
  }) {
    return clearRecentSearches?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, Category category)? search,
    TResult Function()? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (clearRecentSearches != null) {
      return clearRecentSearches();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchProduct value) search,
    required TResult Function(ClearRecentSearches value) clearRecentSearches,
  }) {
    return clearRecentSearches(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchProduct value)? search,
    TResult Function(ClearRecentSearches value)? clearRecentSearches,
  }) {
    return clearRecentSearches?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProduct value)? search,
    TResult Function(ClearRecentSearches value)? clearRecentSearches,
    required TResult orElse(),
  }) {
    if (clearRecentSearches != null) {
      return clearRecentSearches(this);
    }
    return orElse();
  }
}

abstract class ClearRecentSearches implements SearchProductEvent {
  const factory ClearRecentSearches() = _$ClearRecentSearches;
}

/// @nodoc
class _$SearchProductStateTearOff {
  const _$SearchProductStateTearOff();

  _SearchProductState call(
      {SearchProductStatus status = SearchProductStatus.initial,
      List<Product> products = const [],
      Set<String> recentSearches = const {},
      dynamic errorMessage = ''}) {
    return _SearchProductState(
      status: status,
      products: products,
      recentSearches: recentSearches,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $SearchProductState = _$SearchProductStateTearOff();

/// @nodoc
mixin _$SearchProductState {
  SearchProductStatus get status => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Set<String> get recentSearches => throw _privateConstructorUsedError;
  dynamic get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProductStateCopyWith<SearchProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductStateCopyWith<$Res> {
  factory $SearchProductStateCopyWith(
          SearchProductState value, $Res Function(SearchProductState) then) =
      _$SearchProductStateCopyWithImpl<$Res>;
  $Res call(
      {SearchProductStatus status,
      List<Product> products,
      Set<String> recentSearches,
      dynamic errorMessage});
}

/// @nodoc
class _$SearchProductStateCopyWithImpl<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  _$SearchProductStateCopyWithImpl(this._value, this._then);

  final SearchProductState _value;
  // ignore: unused_field
  final $Res Function(SearchProductState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? products = freezed,
    Object? recentSearches = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchProductStatus,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      recentSearches: recentSearches == freezed
          ? _value.recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$SearchProductStateCopyWith<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  factory _$SearchProductStateCopyWith(
          _SearchProductState value, $Res Function(_SearchProductState) then) =
      __$SearchProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchProductStatus status,
      List<Product> products,
      Set<String> recentSearches,
      dynamic errorMessage});
}

/// @nodoc
class __$SearchProductStateCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res>
    implements _$SearchProductStateCopyWith<$Res> {
  __$SearchProductStateCopyWithImpl(
      _SearchProductState _value, $Res Function(_SearchProductState) _then)
      : super(_value, (v) => _then(v as _SearchProductState));

  @override
  _SearchProductState get _value => super._value as _SearchProductState;

  @override
  $Res call({
    Object? status = freezed,
    Object? products = freezed,
    Object? recentSearches = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_SearchProductState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchProductStatus,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      recentSearches: recentSearches == freezed
          ? _value.recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      errorMessage:
          errorMessage == freezed ? _value.errorMessage : errorMessage,
    ));
  }
}

/// @nodoc

class _$_SearchProductState implements _SearchProductState {
  const _$_SearchProductState(
      {this.status = SearchProductStatus.initial,
      this.products = const [],
      this.recentSearches = const {},
      this.errorMessage = ''});

  @JsonKey()
  @override
  final SearchProductStatus status;
  @JsonKey()
  @override
  final List<Product> products;
  @JsonKey()
  @override
  final Set<String> recentSearches;
  @JsonKey()
  @override
  final dynamic errorMessage;

  @override
  String toString() {
    return 'SearchProductState(status: $status, products: $products, recentSearches: $recentSearches, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchProductState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.recentSearches, recentSearches) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(recentSearches),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$SearchProductStateCopyWith<_SearchProductState> get copyWith =>
      __$SearchProductStateCopyWithImpl<_SearchProductState>(this, _$identity);
}

abstract class _SearchProductState implements SearchProductState {
  const factory _SearchProductState(
      {SearchProductStatus status,
      List<Product> products,
      Set<String> recentSearches,
      dynamic errorMessage}) = _$_SearchProductState;

  @override
  SearchProductStatus get status;
  @override
  List<Product> get products;
  @override
  Set<String> get recentSearches;
  @override
  dynamic get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$SearchProductStateCopyWith<_SearchProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
