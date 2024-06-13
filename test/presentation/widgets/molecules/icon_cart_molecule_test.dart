import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Click cart icon',
    (tester) async {
      bool clickedIcon = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: IconCartMolecule(
              key: const Key("IconCartMolecule"),
              onClick: () => clickedIcon = true,
              cartCount: "0"),
        ),
      ));
      await tester.tap(find.byKey(const Key("IconCartMolecule")));
      expect(clickedIcon, true, reason: 'On click cart icon return true');
    },
  );
}
