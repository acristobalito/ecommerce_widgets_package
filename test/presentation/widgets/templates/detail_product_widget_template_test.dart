import 'package:ecommerce_widgets_package/domain/model/product_widget_model.dart';
import 'package:ecommerce_widgets_package/domain/model/rating_widget_model.dart';
import 'package:ecommerce_widgets_package/foundations/themes/ecommerce_theme.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/templates/detail_product_widget_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets('Show product detail', (tester) async {
    final product = ProductWidgetModel(
        id: 1,
        title: 'Producto de prueba',
        price: 0,
        description: '',
        category: '',
        image: '',
        rating: RatingWidgetModel(rate: 0, count: 0));
    await mockNetworkImages(() async => await tester.pumpWidget(MaterialApp(
          theme: ecommerceTheme,
          home: Scaffold(
              body: SafeArea(
                  child: Column(
            children: [
              const Text('Prueba'),
              DetailProductWidgetTemplate(product: product),
            ],
          ))),
        )));
    expect(find.text('Producto de prueba'), findsOneWidget);
  });
}
