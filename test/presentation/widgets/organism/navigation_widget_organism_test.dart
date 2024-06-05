import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Click botton Navigation Bar ', (tester) async {
    int navigationIndex = 0;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: NavigationWidgetOrganism(
            onTap: (index) => navigationIndex = index,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'ABC'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit_outlined), label: 'CDF')
            ]),
      ),
    ));
    await tester.tap(find.text('CDF'));
    await tester.pumpAndSettle();
    expect(navigationIndex, 1);
  });
}
