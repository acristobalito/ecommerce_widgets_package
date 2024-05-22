import 'package:flutter/material.dart';

/// Custom navigation widget organism that receives [onTap], [items] and [currentIndex] as parameters.
class NavigationWidgetOrganism extends StatelessWidget {
  final VoidCallback onTap;
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  const NavigationWidgetOrganism(
      {super.key,
      required this.onTap,
      required this.items,
      this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => onTap.call(),
      currentIndex: currentIndex,
      elevation: 0,
      items: items,
    );
  }
}
