part of 'search_product_bloc.dart';

enum SearchProductStatus { initial, searching, success, failure }

@freezed
class SearchProductState with _$SearchProductState {
  const factory SearchProductState({
    @Default(SearchProductStatus.initial) SearchProductStatus status,
    @Default([]) List<Product> products,
    @Default({}) Set<String> recentSearches,
    @Default('') errorMessage,
  }) = _SearchProductState;
}
