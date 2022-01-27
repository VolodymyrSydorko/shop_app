part of 'search_product_bloc.dart';

@freezed
class SearchProductEvent with _$SearchProductEvent {
  const factory SearchProductEvent.search(String query, Category category) =
      SearchProduct;
  const factory SearchProductEvent.clearRecentSearches() = ClearRecentSearches;
}
