// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// Proxy class for `CopyWith` functionality. This is a callable class and can be used as follows: `instanceOfProduct.copyWith(...)`. Be aware that this kind of usage does not support nullification and all passed `null` values will be ignored. Prefer to copy the instance with a specific field change that handles nullification of fields correctly, e.g. like this:`instanceOfProduct.copyWith.fieldName(...)`
class _ProductCWProxy {
  final Product _value;

  const _ProductCWProxy(this._value);

  /// This function does not support nullification of optional types, all `null` values passed to this function will be ignored. For nullification, use `Product(...).copyWithNull(...)` to set certain fields to `null`. Prefer `Product(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
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
  }) {
    return Product(
      description: description ?? _value.description,
      id: id ?? _value.id,
      imageUrl: imageUrl ?? _value.imageUrl,
      isFavorite: isFavorite ?? _value.isFavorite,
      price: price ?? _value.price,
      title: title ?? _value.title,
    );
  }

  Product description(String description) => this(description: description);

  Product id(String id) => this(id: id);

  Product imageUrl(String imageUrl) => this(imageUrl: imageUrl);

  Product isFavorite(bool isFavorite) => this(isFavorite: isFavorite);

  Product price(double price) => this(price: price);

  Product title(String title) => this(title: title);
}

extension ProductCopyWith on Product {
  /// CopyWith feature provided by `copy_with_extension_gen` library. Returns a callable class and can be used as follows: `instanceOfclass Product.name.copyWith(...)`. Be aware that this kind of usage does not support nullification and all passed `null` values will be ignored. Prefer to copy the instance with a specific field change that handles nullification of fields correctly, e.g. like this:`instanceOfclass Product.name.copyWith.fieldName(...)`
  _ProductCWProxy get copyWith => _ProductCWProxy(this);
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
