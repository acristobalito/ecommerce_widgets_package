import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class CardMoleculeSectionWidget extends StatelessWidget {
  const CardMoleculeSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ProductModel(
        id: 1,
        title: 'Titulo del producto',
        image:
            'https://www.libreriahuequito.com/public/images/productos/default.png',
        price: 1000,
        rating: RatingModel(rate: 5, count: 100),
        description: '',
        category: '');
    return CardItemMolecule(
      product: product,
      onClick: () {},
    );
  }
}
