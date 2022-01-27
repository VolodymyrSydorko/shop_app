import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/search_product/search_product_bloc.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/products_grid.dart';

class SearchScreen extends SearchDelegate {
  var searchType = Category.none;

  @override
  String get searchFieldLabel => 'Search product...';

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context);
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: SizedBox(
          width: 25.0,
          child: RawMaterialButton(
              shape: const CircleBorder(),
              elevation: 1.0,
              fillColor: const Color(0xFF4A5568),
              child: const Icon(Icons.clear, color: Colors.white, size: 20.0),
              onPressed: () {
                query = '';
              }),
        ),
      ),
      StatefulBuilder(builder: (context, StateSetter setState) {
        return PopupMenuButton<Category>(
          icon: Icon(
            Icons.sort,
            color: Theme.of(context).appBarTheme.backgroundColor,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          color: Theme.of(context).popupMenuTheme.color,
          onSelected: (type) {
            setState(() {
              searchType = type;
              query = query;
            });
          },
          itemBuilder: (BuildContext context) {
            return Category.values.map((Category category) {
              return PopupMenuItem<Category>(
                value: category,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      category.name,
                    ),
                    searchType == category
                        ? const Icon(
                            Icons.check,
                            color: Colors.black,
                          )
                        : const SizedBox(width: 0.0)
                  ],
                ),
              );
            }).toList();
          },
        );
      }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const BackButtonIcon(),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isNotEmpty) {
      context
          .read<SearchProductBloc>()
          .add(SearchProductEvent.search(query, searchType));

      return BlocBuilder<SearchProductBloc, SearchProductState>(
        builder: (context, state) {
          switch (state.status) {
            case SearchProductStatus.initial:
            case SearchProductStatus.success:
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: state.products.isNotEmpty
                    ? ProductsGrid(products: state.products)
                    : const Center(child: Text('No elements')),
              );
            case SearchProductStatus.searching:
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'Searching for products..',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ),
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
                ],
              );
            case SearchProductStatus.failure:
              return const Center(child: Text('An error occurred!'));
          }
        },
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final searchBloc = context.read<SearchProductBloc>();

    if (searchBloc.state.recentSearches.isNotEmpty && query.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: double.infinity,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Recent Searches',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      searchBloc
                          .add(const SearchProductEvent.clearRecentSearches());
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4A5568),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: const Text(
                        'Clear',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, counter) {
                    return const SizedBox(
                      height: 0.0,
                    );
                  },
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {
                      query = searchBloc.state.recentSearches.elementAt(index);
                      showResults(context);
                    },
                    title: RichText(
                      text: TextSpan(
                          text:
                              searchBloc.state.recentSearches.elementAt(index),
                          style: Theme.of(context).textTheme.bodyText2),
                    ),
                  ),
                  itemCount: searchBloc.state.recentSearches.length,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
