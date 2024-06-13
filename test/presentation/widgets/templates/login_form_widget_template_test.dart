import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('On click start with empty fields should not access',
      (tester) async {
    bool isValid = false;
    await tester.pumpWidget(MaterialApp(
      theme: ecommerceTheme,
      home: Scaffold(
        body: LoginFormWidgetTemplate(
            onSubmit: (p0) => isValid = true, isLoading: false),
      ),
    ));
    await tester.tap(find.byType(CustomButtonAtom));
    expect(isValid, false, reason: 'On click start, is valid should be false');
  });

  testWidgets('On click start with valid fields should access', (tester) async {
    bool isValid = false;
    await tester.pumpWidget(MaterialApp(
      theme: ecommerceTheme,
      home: Scaffold(
        body: LoginFormWidgetTemplate(
            onSubmit: (p0) => isValid = true, isLoading: false),
      ),
    ));
    final userField = find.byType(TextFormField).first;
    final passwordField = find.byType(TextFormField).last;
    await tester.enterText(userField, '123');
    await tester.enterText(passwordField, '123');
    await tester.tap(find.byType(CustomButtonAtom));
    expect(isValid, true, reason: 'On click start, is valid should be true');
  });
}
