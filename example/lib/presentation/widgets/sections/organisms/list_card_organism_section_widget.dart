import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class ListCardOrganismSectionWidget extends StatelessWidget {
  const ListCardOrganismSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      ProductWidgetModel(
          id: 1,
          title: 'Titulo del producto',
          image:
              'https://www.libreriahuequito.com/public/images/productos/default.png',
          price: 1000,
          rating: RatingWidgetModel(rate: 5, count: 100),
          description: '',
          category: ''),
      ProductWidgetModel(
          id: 1,
          title: 'Titulo del producto',
          image:
              'https://www.libreriahuequito.com/public/images/productos/default.png',
          price: 1000,
          rating: RatingWidgetModel(rate: 5, count: 100),
          description: '',
          category: ''),
      ProductWidgetModel(
          id: 1,
          title: 'Titulo del producto',
          image:
              'https://www.libreriahuequito.com/public/images/productos/default.png',
          price: 1000,
          rating: RatingWidgetModel(rate: 5, count: 100),
          description: '',
          category: ''),
      ProductWidgetModel(
          id: 1,
          title: 'Titulo del producto',
          image:
              'https://www.libreriahuequito.com/public/images/productos/default.png',
          price: 1000,
          rating: RatingWidgetModel(rate: 5, count: 100),
          description: '',
          category: ''),
      ProductWidgetModel(
          id: 1,
          title: 'Titulo del producto',
          image:
              'https://www.libreriahuequito.com/public/images/productos/default.png',
          price: 1000,
          rating: RatingWidgetModel(rate: 5, count: 100),
          description: '',
          category: '')
    ];
    return CardListWidgetOrganism(
      onClickItem: (product) {},
      products: products,
    );
  }
}
