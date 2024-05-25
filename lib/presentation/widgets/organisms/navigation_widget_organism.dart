import 'package:flutter/material.dart';

/// Custom navigation widget organism that receives [onTap], [items], [elevation] and [currentIndex] as parameters.
class NavigationWidgetOrganism extends StatelessWidget {
  final Function(int) onTap;
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final double? elevation;
  const NavigationWidgetOrganism(
      {super.key,
      required this.onTap,
      required this.items,
      this.currentIndex = 0,
      this.elevation});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => onTap.call(value),
      currentIndex: currentIndex,
      elevation: elevation,
      items: items,
    );
  }
}
