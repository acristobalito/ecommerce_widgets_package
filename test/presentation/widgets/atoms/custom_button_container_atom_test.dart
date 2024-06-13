import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Click buttom container atom', (tester) async {
    bool clickContainerButton = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CustomButtonContainerAtom(
          onClick: () => clickContainerButton = true,
        ),
      ),
    ));
    await tester.tap(find.byType(CustomButtonContainerAtom));

    expect(clickContainerButton, true, reason: 'On click return true');
  });
}
