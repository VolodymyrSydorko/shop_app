import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/helpers/extensions.dart';
import 'package:shop_app/models/auth/auth.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/services/services.dart';

part 'user_products_event.dart';
part 'user_products_state.dart';
part 'user_products_bloc.freezed.dart';

class UserProductsBloc extends Bloc<UserProductsEvent, UserProductsState> {
  UserProductsBloc({
    required this.productsRepository,
    required this.authenticationBloc,
  }) : super(const UserProductsState()) {
    on<LoadUserProducts>(_loadUserProducts);
    on<AddProduct>(_addProduct);
    on<EditProduct>(_editProduct);
    on<DeleteProduct>(_deleteProduct);

    subscription = authenticationBloc.stream.listen((state) {
      if (state.authStatus == AuthStatus.authenticated) {
        userProfile = state.userProfile;
      }
    });
  }

  final ProductsRepository productsRepository;
  final AuthenticationBloc authenticationBloc;
  UserProfile? userProfile;

  late StreamSubscription subscription;

  FutureOr<void> _loadUserProducts(
      LoadUserProducts event, Emitter<UserProductsState> emit) async {
    try {
      final products =
          await productsRepository.getAllProducts(userId: userProfile!.userId);

      emit(state.copyWith(
          status: UserProductStatus.success, products: products));
    } catch (e) {
      emit(state.copyWith(status: UserProductStatus.failure));
    }
  }

  FutureOr<void> _addProduct(
      AddProduct event, Emitter<UserProductsState> emit) async {
    try {
      final Product newProduct = await productsRepository.addProduct(
          event.product, userProfile!.userId);

      emit(
        state.copyWith(
            status: UserProductStatus.success,
            products: [...state.products, newProduct]),
      );
    } catch (e) {
      emit(state.copyWith(status: UserProductStatus.failure));
    }
  }

  FutureOr<void> _editProduct(
      EditProduct event, Emitter<UserProductsState> emit) async {
    try {
      await productsRepository.updateProduct(event.id, event.editedProduct);

      emit(
        state.copyWith(
          status: UserProductStatus.success,
          products: state.products.replaceWhere(
              (product) => product.id == event.id,
              (product) => event.editedProduct),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: UserProductStatus.failure));
    }
  }

  FutureOr<void> _deleteProduct(
      DeleteProduct event, Emitter<UserProductsState> emit) async {
    try {
      await productsRepository.deleteProduct(event.id);
      emit(
        state.copyWith(
            status: UserProductStatus.success,
            products: [...state.products]..remove(findById(event.id))),
      );
    } catch (e) {
      emit(state.copyWith(status: UserProductStatus.failure));
    }
  }

  Product findById(String id) {
    return state.products.firstWhere((element) => element.id == id);
  }
}
