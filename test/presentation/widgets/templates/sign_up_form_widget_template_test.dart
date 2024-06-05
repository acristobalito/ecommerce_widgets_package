import 'package:ecommerce_widgets_package/domain/model/submit_sign_up_widget_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('On submit with empty fields not should access', (tester) async {
    SubmitSignUpWidgetModel? submit;
    await tester.pumpWidget(MaterialApp(
      theme: ecommerceTheme,
      home: Scaffold(
        body: SignUpFormWidgetTemplate(
            onSubmit: (submitForm) => submit = submitForm, isLoading: false),
      ),
    ));
    final submitButton = find.byType(CustomButtonAtom);
    await tester.tap(submitButton);
    expect(submit, isNull);
  });

  testWidgets('On submit with valid fields should access', (tester) async {
    SubmitSignUpWidgetModel? submit;
    await tester.pumpWidget(MaterialApp(
      theme: ecommerceTheme,
      home: Scaffold(
        body: SignUpFormWidgetTemplate(
            onSubmit: (submitForm) => submit = submitForm, isLoading: false),
      ),
    ));
    final emailField = find.byType(TextFieldFormMolecule).at(2);
    final passField = find.byType(TextFieldFormMolecule).at(5);
    final userNameField = find.byType(TextFieldFormMolecule).at(4);
    final lastNameField = find.byType(TextFieldFormMolecule).at(1);
    final firstNameField = find.byType(TextFieldFormMolecule).at(0);
    final phoneField = find.byType(TextFieldFormMolecule).at(3);
    final submitButton = find.byType(CustomButtonAtom);
    await tester.enterText(firstNameField, 'Abc');
    await tester.enterText(lastNameField, 'Abc');
    await tester.enterText(emailField, '123@gmail.com');
    await tester.enterText(phoneField, '999999999');
    await tester.enterText(userNameField, 'Abc');
    await tester.enterText(passField, 'Abc');
    await tester.tap(submitButton);
    await tester.pumpAndSettle();
    expect(submit, isNotNull);
  });
}
