import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class CatalogPageWidget extends StatelessWidget {
  const CatalogPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductWidgetModel> products = [
      ProductWidgetModel(
          id: 1,
          title: 'Prueba',
          price: 2000,
          description: 'Descripcion',
          category: 'Prueba',
          image:
              'https://www.libreriahuequito.com/public/images/productos/default.png',
          rating: RatingWidgetModel(rate: 4.5, count: 100)),
      ProductWidgetModel(
          id: 1,
          title: 'Prueba',
          price: 2000,
          description: 'Descripcion',
          category: 'Prueba',
          image:
              'https://www.libreriahuequito.com/public/images/productos/default.png',
          rating: RatingWidgetModel(rate: 4.5, count: 100))
    ];
    final categories = ['Aasadsad', 'Asdsadasdas', 'Aassdfadas', 'Asadasdas'];
    return CatalogViewWidgetTemplate(
      products: products,
      categories: categories,
      onProductClicked: (p0) {},
      onCategorySelected: (p0) {},
    );
  }
}
