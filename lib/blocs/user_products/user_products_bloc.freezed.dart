// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserProductsEventTearOff {
  const _$UserProductsEventTearOff();

  LoadUserProducts load() {
    return const LoadUserProducts();
  }

  AddProduct addProduct(Product product) {
    return AddProduct(
      product,
    );
  }

  EditProduct editProduct(String id, Product editedProduct) {
    return EditProduct(
      id,
      editedProduct,
    );
  }

  DeleteProduct deleteProduct(String id) {
    return DeleteProduct(
      id,
    );
  }
}

/// @nodoc
const $UserProductsEvent = _$UserProductsEventTearOff();

/// @nodoc
mixin _$UserProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Product product) addProduct,
    required TResult Function(String id, Product editedProduct) editProduct,
    required TResult Function(String id) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserProducts value) load,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(EditProduct value) editProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProductsEventCopyWith<$Res> {
  factory $UserProductsEventCopyWith(
          UserProductsEvent value, $Res Function(UserProductsEvent) then) =
      _$UserProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProductsEventCopyWithImpl<$Res>
    implements $UserProductsEventCopyWith<$Res> {
  _$UserProductsEventCopyWithImpl(this._value, this._then);

  final UserProductsEvent _value;
  // ignore: unused_field
  final $Res Function(UserProductsEvent) _then;
}

/// @nodoc
abstract class $LoadUserProductsCopyWith<$Res> {
  factory $LoadUserProductsCopyWith(
          LoadUserProducts value, $Res Function(LoadUserProducts) then) =
      _$LoadUserProductsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadUserProductsCopyWithImpl<$Res>
    extends _$UserProductsEventCopyWithImpl<$Res>
    implements $LoadUserProductsCopyWith<$Res> {
  _$LoadUserProductsCopyWithImpl(
      LoadUserProducts _value, $Res Function(LoadUserProducts) _then)
      : super(_value, (v) => _then(v as LoadUserProducts));

  @override
  LoadUserProducts get _value => super._value as LoadUserProducts;
}

/// @nodoc

class _$LoadUserProducts implements LoadUserProducts {
  const _$LoadUserProducts();

  @override
  String toString() {
    return 'UserProductsEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadUserProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Product product) addProduct,
    required TResult Function(String id, Product editedProduct) editProduct,
    required TResult Function(String id) deleteProduct,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
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
    required TResult Function(LoadUserProducts value) load,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(EditProduct value) editProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadUserProducts implements UserProductsEvent {
  const factory LoadUserProducts() = _$LoadUserProducts;
}

/// @nodoc
abstract class $AddProductCopyWith<$Res> {
  factory $AddProductCopyWith(
          AddProduct value, $Res Function(AddProduct) then) =
      _$AddProductCopyWithImpl<$Res>;
  $Res call({Product product});
}

/// @nodoc
class _$AddProductCopyWithImpl<$Res>
    extends _$UserProductsEventCopyWithImpl<$Res>
    implements $AddProductCopyWith<$Res> {
  _$AddProductCopyWithImpl(AddProduct _value, $Res Function(AddProduct) _then)
      : super(_value, (v) => _then(v as AddProduct));

  @override
  AddProduct get _value => super._value as AddProduct;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(AddProduct(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$AddProduct implements AddProduct {
  const _$AddProduct(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'UserProductsEvent.addProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddProduct &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  $AddProductCopyWith<AddProduct> get copyWith =>
      _$AddProductCopyWithImpl<AddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Product product) addProduct,
    required TResult Function(String id, Product editedProduct) editProduct,
    required TResult Function(String id) deleteProduct,
  }) {
    return addProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
  }) {
    return addProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserProducts value) load,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(EditProduct value) editProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class AddProduct implements UserProductsEvent {
  const factory AddProduct(Product product) = _$AddProduct;

  Product get product;
  @JsonKey(ignore: true)
  $AddProductCopyWith<AddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProductCopyWith<$Res> {
  factory $EditProductCopyWith(
          EditProduct value, $Res Function(EditProduct) then) =
      _$EditProductCopyWithImpl<$Res>;
  $Res call({String id, Product editedProduct});
}

/// @nodoc
class _$EditProductCopyWithImpl<$Res>
    extends _$UserProductsEventCopyWithImpl<$Res>
    implements $EditProductCopyWith<$Res> {
  _$EditProductCopyWithImpl(
      EditProduct _value, $Res Function(EditProduct) _then)
      : super(_value, (v) => _then(v as EditProduct));

  @override
  EditProduct get _value => super._value as EditProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? editedProduct = freezed,
  }) {
    return _then(EditProduct(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      editedProduct == freezed
          ? _value.editedProduct
          : editedProduct // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$EditProduct implements EditProduct {
  const _$EditProduct(this.id, this.editedProduct);

  @override
  final String id;
  @override
  final Product editedProduct;

  @override
  String toString() {
    return 'UserProductsEvent.editProduct(id: $id, editedProduct: $editedProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProduct &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.editedProduct, editedProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(editedProduct));

  @JsonKey(ignore: true)
  @override
  $EditProductCopyWith<EditProduct> get copyWith =>
      _$EditProductCopyWithImpl<EditProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Product product) addProduct,
    required TResult Function(String id, Product editedProduct) editProduct,
    required TResult Function(String id) deleteProduct,
  }) {
    return editProduct(id, editedProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
  }) {
    return editProduct?.call(id, editedProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(id, editedProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserProducts value) load,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(EditProduct value) editProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
  }) {
    return editProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
  }) {
    return editProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(this);
    }
    return orElse();
  }
}

abstract class EditProduct implements UserProductsEvent {
  const factory EditProduct(String id, Product editedProduct) = _$EditProduct;

  String get id;
  Product get editedProduct;
  @JsonKey(ignore: true)
  $EditProductCopyWith<EditProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProductCopyWith<$Res> {
  factory $DeleteProductCopyWith(
          DeleteProduct value, $Res Function(DeleteProduct) then) =
      _$DeleteProductCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DeleteProductCopyWithImpl<$Res>
    extends _$UserProductsEventCopyWithImpl<$Res>
    implements $DeleteProductCopyWith<$Res> {
  _$DeleteProductCopyWithImpl(
      DeleteProduct _value, $Res Function(DeleteProduct) _then)
      : super(_value, (v) => _then(v as DeleteProduct));

  @override
  DeleteProduct get _value => super._value as DeleteProduct;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(DeleteProduct(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProduct implements DeleteProduct {
  const _$DeleteProduct(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'UserProductsEvent.deleteProduct(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteProduct &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $DeleteProductCopyWith<DeleteProduct> get copyWith =>
      _$DeleteProductCopyWithImpl<DeleteProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Product product) addProduct,
    required TResult Function(String id, Product editedProduct) editProduct,
    required TResult Function(String id) deleteProduct,
  }) {
    return deleteProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
  }) {
    return deleteProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Product product)? addProduct,
    TResult Function(String id, Product editedProduct)? editProduct,
    TResult Function(String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserProducts value) load,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(EditProduct value) editProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserProducts value)? load,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(EditProduct value)? editProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteProduct implements UserProductsEvent {
  const factory DeleteProduct(String id) = _$DeleteProduct;

  String get id;
  @JsonKey(ignore: true)
  $DeleteProductCopyWith<DeleteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserProductsStateTearOff {
  const _$UserProductsStateTearOff();

  _UserProductsState call(
      {UserProductStatus status = UserProductStatus.initial,
      List<Product> products = const [],
      String error = ''}) {
    return _UserProductsState(
      status: status,
      products: products,
      error: error,
    );
  }
}

/// @nodoc
const $UserProductsState = _$UserProductsStateTearOff();

/// @nodoc
mixin _$UserProductsState {
  UserProductStatus get status => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProductsStateCopyWith<UserProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProductsStateCopyWith<$Res> {
  factory $UserProductsStateCopyWith(
          UserProductsState value, $Res Function(UserProductsState) then) =
      _$UserProductsStateCopyWithImpl<$Res>;
  $Res call({UserProductStatus status, List<Product> products, String error});
}

/// @nodoc
class _$UserProductsStateCopyWithImpl<$Res>
    implements $UserProductsStateCopyWith<$Res> {
  _$UserProductsStateCopyWithImpl(this._value, this._then);

  final UserProductsState _value;
  // ignore: unused_field
  final $Res Function(UserProductsState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? products = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserProductStatus,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserProductsStateCopyWith<$Res>
    implements $UserProductsStateCopyWith<$Res> {
  factory _$UserProductsStateCopyWith(
          _UserProductsState value, $Res Function(_UserProductsState) then) =
      __$UserProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({UserProductStatus status, List<Product> products, String error});
}

/// @nodoc
class __$UserProductsStateCopyWithImpl<$Res>
    extends _$UserProductsStateCopyWithImpl<$Res>
    implements _$UserProductsStateCopyWith<$Res> {
  __$UserProductsStateCopyWithImpl(
      _UserProductsState _value, $Res Function(_UserProductsState) _then)
      : super(_value, (v) => _then(v as _UserProductsState));

  @override
  _UserProductsState get _value => super._value as _UserProductsState;

  @override
  $Res call({
    Object? status = freezed,
    Object? products = freezed,
    Object? error = freezed,
  }) {
    return _then(_UserProductsState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserProductStatus,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserProductsState implements _UserProductsState {
  const _$_UserProductsState(
      {this.status = UserProductStatus.initial,
      this.products = const [],
      this.error = ''});

  @JsonKey()
  @override
  final UserProductStatus status;
  @JsonKey()
  @override
  final List<Product> products;
  @JsonKey()
  @override
  final String error;

  @override
  String toString() {
    return 'UserProductsState(status: $status, products: $products, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProductsState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$UserProductsStateCopyWith<_UserProductsState> get copyWith =>
      __$UserProductsStateCopyWithImpl<_UserProductsState>(this, _$identity);
}

abstract class _UserProductsState implements UserProductsState {
  const factory _UserProductsState(
      {UserProductStatus status,
      List<Product> products,
      String error}) = _$_UserProductsState;

  @override
  UserProductStatus get status;
  @override
  List<Product> get products;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$UserProductsStateCopyWith<_UserProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
