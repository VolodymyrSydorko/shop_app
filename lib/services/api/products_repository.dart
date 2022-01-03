import 'package:dio/dio.dart';

import 'package:shop_app/models/product.dart';
import 'api_client.dart';
import 'endpoints.dart';

class ProductsRepository {
  final ApiClient _apiClient;

  ProductsRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<List<Product>> getAllProducts() async {
    try {
      final response = (await _apiClient.dio
              .get<Map<String, dynamic>?>('${Endpoints.products}.json'))
          .data;

      if (response == null) {
        return [];
      }

      return response.keys
          .map((key) =>
              Product.fromJson(response[key] as Map<String, dynamic>)..id = key)
          .toList();
    } on DioError catch (ex) {
      final response = ex.response?.data;
      if (response is Map<String, dynamic> && response.containsKey('error')) {
        throw Exception(response['error']);
      } else {
        throw Exception(ex.message);
      }
    }
  }

  Future<Product> addProduct(Product product) async {
    try {
      final response = (await _apiClient.dio.post<Map<String, dynamic>>(
              '${Endpoints.products}.json',
              data: product.toJson()))
          .data!;

      return product.copyWith(id: response['name']);
    } on DioError catch (ex) {
      final response = ex.response?.data;
      if (response is Map<String, dynamic> && response.containsKey('error')) {
        throw Exception(response['error']);
      } else {
        throw Exception(ex.message);
      }
    }
  }

  Future<Product> updateProduct(String productId, Product editedProduct) async {
    try {
      final response = (await _apiClient.dio.patch<Map<String, dynamic>>(
              '${Endpoints.products}/$productId.json',
              data: editedProduct.toJson()))
          .data!;

      return Product.fromJson(response)..id = productId;
    } on DioError catch (ex) {
      final response = ex.response?.data;
      if (response is Map<String, dynamic> && response.containsKey('error')) {
        throw Exception(response['error']);
      } else {
        throw Exception(ex.message);
      }
    }
  }

  Future<void> deleteProduct(String productId) async {
    try {
      await _apiClient.dio.delete('${Endpoints.products}/$productId.json');
    } on DioError catch (ex) {
      final response = ex.response?.data;
      if (response is Map<String, dynamic> && response.containsKey('error')) {
        throw Exception(response['error']);
      } else {
        throw Exception(ex.message);
      }
    }
  }
}
