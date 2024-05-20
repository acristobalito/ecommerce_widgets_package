import 'package:example/config/menu_items/screens_items.dart';
import 'package:example/presentation/screens/atom_screen.dart';
import 'package:example/presentation/screens/molecules_screen.dart';
import 'package:flutter/material.dart';

class CustomNavigation {
  void navigate(BuildContext context, ScreensItems screen) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        switch (screen) {
          case ScreensItems.atoms:
            return AtomScreen();
          default:
            return MoleculesScreen();
        }
      },
    ));
  }
}
