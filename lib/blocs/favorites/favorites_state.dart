part of 'favorites_bloc.dart';

enum FavoriteStatus { initial, loading, success, failure }

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    @Default(FavoriteStatus.initial) FavoriteStatus status,
    @Default([]) List<Product> favorites,
    @Default('') String error,
  }) = _FavoritesState;
}
