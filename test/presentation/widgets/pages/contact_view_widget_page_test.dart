import 'package:ecommerce_widgets_package/foundations/themes/ecommerce_theme.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/pages/contact_view_widget_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets('Show contact info', (tester) async {
    await mockNetworkImages(() async => await tester.pumpWidget(MaterialApp(
        theme: ecommerceTheme,
        home: const Scaffold(body: ContactViewWidgetPage()))));
    expect(find.text('Antony Cristobal Zambrano'), findsOneWidget,
        reason: 'Text should show contact name');
  });
}
