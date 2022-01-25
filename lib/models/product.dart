import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

enum Category { none, sport, transfort, clothes, home, garden, work, business }

@CopyWith()
@JsonSerializable()
class Product {
  @JsonKey(ignore: true)
  String id;
  final String title;
  final String description;
  final double price;
  final Category category;
  final String imagePath;
  final String? base64Url;
  bool isFavorite;

  Product({
    this.id = "",
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.imagePath,
    this.base64Url,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
