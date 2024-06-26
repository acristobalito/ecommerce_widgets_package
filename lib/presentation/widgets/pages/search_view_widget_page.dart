import 'package:ecommerce_widgets_package/presentation/widgets/templates/search_view_widget_template.dart';
import 'package:ecommerce_widgets_package/domain/model/product_widget_model.dart';
import 'package:flutter/material.dart';

/// Custom search view page form widget that receives [onSearch], [onProductClicked], [onTapSearchBar] and [products] as parameters.
class SearchViewWidgetPage extends StatelessWidget {
  final List<ProductWidgetModel> products;
  final VoidCallback onSearch;
  final VoidCallback onProductClicked;
  final VoidCallback onTapSearchBar;
  const SearchViewWidgetPage(
      {super.key,
      required this.products,
      required this.onSearch,
      required this.onProductClicked,
      required this.onTapSearchBar});

  @override
  Widget build(BuildContext context) {
    return SearchViewWidgetTemplate(
      onSearch: (value) => onSearch.call(),
      products: products,
      onTapContainer: () => onTapSearchBar.call(),
      onProductClicked: (product) => onProductClicked.call(),
    );
  }
}
