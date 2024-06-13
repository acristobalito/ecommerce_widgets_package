import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Input text should return value', (tester) async {
    String inputValue = '';
    bool containerClicked = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: TextFieldFormMolecule(
            titleElement: 'Prueba',
            onClickContainer: () => containerClicked = true,
            onChangeValue: (value) => inputValue = value ?? '',
            iconForm: Icons.abc),
      ),
    ));
    await tester.enterText(find.byType(TextFormField), '123');
    expect(inputValue, '123', reason: 'Input value should 123');
    await tester.tap(find.byType(CustomTextFieldAtom));
    expect(containerClicked, true, reason: 'Container clicked return true');
  });
}
