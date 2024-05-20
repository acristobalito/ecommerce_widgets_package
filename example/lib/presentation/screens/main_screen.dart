import 'package:ecommerce_widgets_package/foundations/foundation_colors.dart';
import 'package:ecommerce_widgets_package/foundations/foundation_typo.dart';
import 'package:example/presentation/widgets/menu_items_view_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: FoundationColors.primaryColor,
        title: const Text(
          'Atomic design system example',
          style: TextStyle(
              color: Colors.white,
              fontFamily: FoundationTypo.font,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: const SafeArea(child: MenuItemsViewWidget()),
    );
  }
}
