import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/models/auth/user_profile.dart';
import 'package:shop_app/services/api/products_repository.dart';

class Products with ChangeNotifier {
  final ProductsRepository productsRepository;
  UserProfile? profile;

  Products({required this.productsRepository});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Product> _products = [];
  List<Product> get products => [..._products];

  Set<String> _recentSearches = {};
  Set<String> get recentSearches => {..._recentSearches};

  List<Product> get favoriteProducts =>
      _products.where((product) => product.isFavorite).toList();

  Product findById(String id) =>
      _products.firstWhere((element) => element.id == id);

  Future<List<Product>> getAllProducts() async {
    try {
      _products = await productsRepository
          .getAllProducts()
          .onError((error, stackTrace) => []);

      return Future.value(_products);
    } catch (err) {
      return Future.error(err);
    }
  }

  Future<List<Product>> getMyProducts() async {
    try {
      _products = await productsRepository
          .getAllProducts(userId: profile!.userId)
          .onError((error, stackTrace) => []);

      return Future.value(_products);
    } catch (err) {
      return Future.error(err);
    }
  }

  Future<void> addProduct(Product product) async {
    setBusy(true);

    final Product newProduct =
        await productsRepository.addProduct(product, profile!.userId);
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

  Future<List<Product>> searchProduct(String query, Category category) async {
    if (query.isEmpty) {
      return [];
    }

    _recentSearches.add(query);

    await Future.delayed(const Duration(seconds: 2));

    return _products
        .where((p) =>
            p.title.contains(query) &&
            (category == Category.none || p.category == category))
        .toList();
  }

  void addRecentSearches(String query) {
    _recentSearches.add(query);
    notifyListeners();
  }

  void deleteRecentSearches(String query) {
    if (_recentSearches.contains(query)) {
      _recentSearches.remove(query);
    }
    notifyListeners();
  }

  void clearRecentSearches() {
    _recentSearches.clear();
    notifyListeners();
  }

  void setBusy(bool isBusy) {
    _isLoading = isBusy;
    notifyListeners();
  }
}
