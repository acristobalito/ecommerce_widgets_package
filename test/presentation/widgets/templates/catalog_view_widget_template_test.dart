import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets(
    'Filter and click catalog products',
    (tester) async {
      final products = [
        ProductWidgetModel(
            id: 1,
            title: '',
            price: 0,
            description: '',
            category: '',
            image: '',
            rating: RatingWidgetModel(rate: 0, count: 0))
      ];
      final categories = ['cat a', 'cat b'];
      bool productClicked = false;
      String categorySelected = '';
      await mockNetworkImages(() async => await tester.pumpWidget(MaterialApp(
            theme: ecommerceTheme,
            home: Scaffold(
              body: CatalogViewWidgetTemplate(
                  products: products,
                  categories: categories,
                  onProductClicked: (_) => productClicked = true,
                  onCategorySelected: (category) => categorySelected = category,
                  isEnable: true),
            ),
          )));
      final dropDownMenu = find.byType(DropdownMenu<String>);
      await tester.tap(dropDownMenu);
      await tester.pumpAndSettle();
      final dropdownMenuItem = find.text('cat a').last;
      await tester.tap(dropdownMenuItem);
      await tester.pumpAndSettle();
      expect(categorySelected, 'cat a',
          reason: 'Category selected should be cat a');
      final productCard = find.byKey(const Key('CardItemMolecule0')).first;
      await tester.tap(productCard);
      expect(productClicked, true, reason: 'Product clicked return true');
    },
  );
}
