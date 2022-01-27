part of 'user_products_bloc.dart';

enum UserProductStatus { initial, loading, success, failure }

@freezed
class UserProductsState with _$UserProductsState {
  const factory UserProductsState({
    @Default(UserProductStatus.initial) UserProductStatus status,
    @Default([]) List<Product> products,
    @Default('') String error,
  }) = _UserProductsState;
}
