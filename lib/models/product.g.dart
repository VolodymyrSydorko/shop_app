// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCWProxy {
  Product base64Url(String? base64Url);

  Product description(String description);

  Product id(String id);

  Product imagePath(String imagePath);

  Product isFavorite(bool isFavorite);

  Product price(double price);

  Product title(String title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Product(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Product(...).copyWith(id: 12, name: "My name")
  /// ````
  Product call({
    String? base64Url,
    String? description,
    String? id,
    String? imagePath,
    bool? isFavorite,
    double? price,
    String? title,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProduct.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProduct.copyWith.fieldName(...)`
class _$ProductCWProxyImpl implements _$ProductCWProxy {
  final Product _value;

  const _$ProductCWProxyImpl(this._value);

  @override
  Product base64Url(String? base64Url) => this(base64Url: base64Url);

  @override
  Product description(String description) => this(description: description);

  @override
  Product id(String id) => this(id: id);

  @override
  Product imagePath(String imagePath) => this(imagePath: imagePath);

  @override
  Product isFavorite(bool isFavorite) => this(isFavorite: isFavorite);

  @override
  Product price(double price) => this(price: price);

  @override
  Product title(String title) => this(title: title);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Product(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Product(...).copyWith(id: 12, name: "My name")
  /// ````
  Product call({
    Object? base64Url = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? imagePath = const $CopyWithPlaceholder(),
    Object? isFavorite = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return Product(
      base64Url: base64Url == const $CopyWithPlaceholder()
          ? _value.base64Url
          // ignore: cast_nullable_to_non_nullable
          : base64Url as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      imagePath: imagePath == const $CopyWithPlaceholder()
          ? _value.imagePath
          // ignore: cast_nullable_to_non_nullable
          : imagePath as String,
      isFavorite: isFavorite == const $CopyWithPlaceholder()
          ? _value.isFavorite
          // ignore: cast_nullable_to_non_nullable
          : isFavorite as bool,
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
    );
  }
}

extension $ProductCopyWith on Product {
  /// Returns a callable class that can be used as follows: `instanceOfclass Product.name.copyWith(...)` or like so:`instanceOfclass Product.name.copyWith.fieldName(...)`.
  _$ProductCWProxy get copyWith => _$ProductCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imagePath: json['imagePath'] as String,
      base64Url: json['base64Url'] as String?,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'imagePath': instance.imagePath,
      'base64Url': instance.base64Url,
      'isFavorite': instance.isFavorite,
    };
