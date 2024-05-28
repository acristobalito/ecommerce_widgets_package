import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

/// Custom login form template widget that receives [products], [categories], [onProductClicked] and [onCategorySelected] as parameters.
class CatalogViewWidgetTemplate extends StatelessWidget {
  final List<ProductWidgetModel> products;
  final bool isEnable;
  final List<String> categories;
  final Function(ProductWidgetModel) onProductClicked;
  final Function(String) onCategorySelected;
  const CatalogViewWidgetTemplate(
      {super.key,
      required this.products,
      required this.categories,
      required this.onProductClicked,
      required this.onCategorySelected,
      required this.isEnable});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDropDownMenuAtom(
          isEnable: isEnable,
          categoryList: categories,
          onCategorySelected: (category) => onCategorySelected.call(category),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: CardListWidgetOrganism(
            products: products,
            onClickItem: (product) => onProductClicked.call(product),
          ),
        )
      ],
    );
  }
}
