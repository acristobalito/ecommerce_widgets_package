import 'package:ecommerce_widgets_package/domain/model/cart_widget_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets('Add, remove, delete, and buy now cart', (tester) async {
    final localCart = [
      CartWidgetModel(id: 1, image: '', nameProduct: '', price: 0, quantity: 1)
    ];
    bool buyNowClicked = false;
    int quantity = 0;
    await mockNetworkImages(() async => await tester.pumpWidget(MaterialApp(
          theme: ecommerceTheme,
          home: Scaffold(
            body: CartViewWidgetTemplate(
                cartList: localCart,
                onAddQuantity: (_) => quantity++,
                onSubstractQuantity: (_) => quantity--,
                onRemove: (_) => quantity = 0,
                onClickBuyNow: () => buyNowClicked = true,
                priceTotal: 0),
          ),
        )));
    final addButton = find.byKey(const Key('AddProductCartQuantityButton'));
    final substractButton =
        find.byKey(const Key('SubstractProductCartQuantityButton'));
    final removeButton = find.byKey(const Key('RemoveProductCartButton'));
    final buyButton = find.text('Comprar');
    await tester.tap(addButton);
    expect(quantity, 1);
    await tester.tap(substractButton);
    expect(quantity, 0);
    await tester.tap(addButton);
    await tester.tap(addButton);
    await tester.tap(removeButton);
    expect(quantity, 0);
    await tester.tap(buyButton);
    expect(buyNowClicked, true);
  });
}
