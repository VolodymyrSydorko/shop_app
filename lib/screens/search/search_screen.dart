import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/providers/providers.dart';
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
      return FutureBuilder(
        future: context.read<Products>().searchProduct(query, searchType),
        builder: (context, AsyncSnapshot<List<Product>> shapshot) {
          return shapshot.connectionState == ConnectionState.waiting
              ? Column(
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
                )
              : Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: shapshot.data != null && shapshot.data!.isNotEmpty
                      ? ProductsGrid(products: shapshot.data ?? [])
                      : const Center(child: Text('No elements')),
                );
        },
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final products = context.read<Products>();

    if (products.recentSearches.isNotEmpty && query.isEmpty) {
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
                      products.clearRecentSearches();
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
                      query = products.recentSearches.elementAt(index);
                      showResults(context);
                    },
                    title: RichText(
                      text: TextSpan(
                          text: products.recentSearches.elementAt(index),
                          style: Theme.of(context).textTheme.bodyText2),
                    ),
                  ),
                  itemCount: products.recentSearches.length,
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
