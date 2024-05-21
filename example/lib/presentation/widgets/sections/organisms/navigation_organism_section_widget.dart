import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class NavigationOrganismSectionWidget extends StatelessWidget {
  const NavigationOrganismSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      const BottomNavigationBarItem(
          icon: IconAtom(icon: Icons.contact_support_rounded, size: 30),
          label: 'Soporte'),
      const BottomNavigationBarItem(
          icon: IconAtom(icon: Icons.home_rounded, size: 30), label: 'Home'),
    ];
    return NavigationWidgetOrganism(
      onTap: () {},
      items: items,
    );
  }
}
