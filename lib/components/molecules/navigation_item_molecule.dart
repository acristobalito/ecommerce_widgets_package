import 'package:ecommerce_widgets_package/components/atoms/icon_atom.dart';
import 'package:flutter/material.dart';

/// Navigation item widget molecule that receives [icon] and [itemName] as parameters.
class NavigationItemMolecule extends StatelessWidget {
  final IconData icon;
  final String itemName;
  const NavigationItemMolecule(
      {super.key, required this.icon, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [IconAtom(icon: icon, size: 30), Text(itemName)],
    );
  }
}
