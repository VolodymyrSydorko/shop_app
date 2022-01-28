part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.load() = LoadFavorites;
  const factory FavoritesEvent.toggleFavorite(Product product) = ToggleFavorite;
}
