// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCWProxy {
  Product description(String description);

  Product id(String id);

  Product imageUrl(String imageUrl);

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
    String? description,
    String? id,
    String? imageUrl,
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
  Product description(String description) => this(description: description);

  @override
  Product id(String id) => this(id: id);

  @override
  Product imageUrl(String imageUrl) => this(imageUrl: imageUrl);

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
    Object? description = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? isFavorite = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return Product(
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String,
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
      imageUrl: json['imageUrl'] as String,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'isFavorite': instance.isFavorite,
    };
