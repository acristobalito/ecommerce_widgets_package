import 'package:ecommerce_widgets_package/presentation/widgets/molecules/card_item_molecule.dart';
import 'package:ecommerce_widgets_package/domain/model/product_widget_model.dart';
import 'package:flutter/material.dart';

/// Custom navigation widget organism that receives [onTap], [items] and [currentIndex] as parameters.
class CardListWidgetOrganism extends StatelessWidget {
  final List<ProductWidgetModel> products;
  final Function(ProductWidgetModel) onClickItem;
  const CardListWidgetOrganism(
      {super.key, required this.products, required this.onClickItem});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: const Key('GridViewOrganism'),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.69),
      itemBuilder: (BuildContext context, int index) => CardItemMolecule(
        key: Key('CardItemMolecule$index'),
        product: products[index],
        onClick: () => onClickItem.call(products[index]),
      ),
      itemCount: products.length,
    );
  }
}
