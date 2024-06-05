import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

/// Custom search view template that receives [onSearch], [onProductClicked], [onTapContainer] and [products] as parameters.
class SearchViewWidgetTemplate extends StatelessWidget {
  final Function(String?) onSearch;
  final Function(ProductWidgetModel) onProductClicked;
  final VoidCallback? onTapContainer;
  final List<ProductWidgetModel> products;
  const SearchViewWidgetTemplate(
      {super.key,
      required this.onSearch,
      required this.products,
      required this.onProductClicked,
      this.onTapContainer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldAtom(
          onTapContainer: () => onTapContainer?.call(),
          onChangeValue: (value) => onSearch.call(value),
          hintText: 'Busca un producto',
          keyBoardType: TextInputType.text,
          prefixIcon: const Icon(Icons.search_rounded),
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
