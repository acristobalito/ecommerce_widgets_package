import 'package:ecommerce_widgets_package/presentation/widgets/templates/search_view_widget_template.dart';
import 'package:ecommerce_widgets_package/domain/model/product_model.dart';
import 'package:flutter/material.dart';

/// Custom search view page form widget that receives [onSearch], [onProductClicked] and [products] as parameters.
class SearchViewWidgetPage extends StatelessWidget {
  final List<ProductModel> products;
  final VoidCallback onSearch;
  final VoidCallback onProductClicked;
  const SearchViewWidgetPage(
      {super.key,
      required this.products,
      required this.onSearch,
      required this.onProductClicked});

  @override
  Widget build(BuildContext context) {
    return SearchViewWidgetTemplate(
      onSearch: (value) => onSearch.call(),
      products: products,
      onProductClicked: (product) => onProductClicked.call(),
    );
  }
}
