import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets('Search view text field input changed should update list',
      (tester) async {
    String keyWord = '';
    bool productClicked = false;
    bool searchBarClicked = false;
    final products = [
      ProductWidgetModel(
          id: 1,
          title: '',
          price: 1,
          description: '',
          category: '',
          image: '',
          rating: RatingWidgetModel(rate: 0, count: 0))
    ];
    await mockNetworkImages(() async => await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: SearchViewWidgetPage(
              onTapSearchBar: () => searchBarClicked = true,
              products: products,
              onSearch: () => keyWord = 'Producto',
              onProductClicked: () => productClicked = true,
            ),
          ),
        )));
    final textFormField = find.byType(TextFormField);
    final productCard = find.byType(CardItemMolecule);
    final searchBar = find.byType(CustomTextFieldAtom);
    await tester.enterText(textFormField, "Producto");
    await tester.tap(productCard);
    await tester.tap(searchBar);
    expect(keyWord, isNotEmpty);
    expect(productClicked, true);
    expect(searchBarClicked, true);
  });
}
