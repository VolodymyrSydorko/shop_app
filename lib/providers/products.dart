import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/services/api/products_repository.dart';

class Products with ChangeNotifier {
  final ProductsRepository productsRepository;

  Products({required this.productsRepository});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Product> _products = [];
  List<Product> get products => [..._products];

  List<Product> get favoriteProducts =>
      _products.where((product) => product.isFavorite).toList();

  Product findById(String id) =>
      _products.firstWhere((element) => element.id == id);

  Future<List<Product>> getAllProducts() async {
    try {
      _isLoading = true;

      notifyListeners();

      _products = await productsRepository
          .getAllProducts()
          .onError((error, stackTrace) => []);

      setBusy(false);

      return Future.value(_products);
    } catch (err) {
      return Future.error(err);
    }
  }

  Future<void> addProduct(Product product) async {
    setBusy(true);

    final newProduct = await productsRepository.addProduct(product);
    _products.add(newProduct);

    setBusy(false);
  }

  Future toggleFavoriteStatus(Product product) async {
    product.toggleFavoriteStatus();

    final index = _products.indexOf(findById(product.id));
    if (index >= 0) {
      _products[index] = product;
    }

    notifyListeners();

    await productsRepository.updateProduct(product.id, product);
  }

  Future updateProduct(String id, Product editedProduct) async {
    setBusy(true);

    final index = _products.indexOf(findById(id));
    if (index >= 0) {
      await productsRepository.updateProduct(id, editedProduct);
      _products[index] = editedProduct;
    }

    setBusy(false);
  }

  Future deleteProduct(String id) async {
    setBusy(true);

    await productsRepository.deleteProduct(id);
    _products.removeWhere((element) => element.id == id);

    setBusy(false);
  }

  void setBusy(bool isBusy) {
    _isLoading = isBusy;
    notifyListeners();
  }
}
