import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class NavigationMoleculeSectionWidget extends StatelessWidget {
  const NavigationMoleculeSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: NavigationItemMolecule(
        icon: Icons.contact_support_rounded,
        itemName: 'Soporte',
      ),
    );
  }
}
