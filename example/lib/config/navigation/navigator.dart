import 'package:example/config/menu_items/screens_items.dart';
import 'package:example/presentation/screens/screens.dart';

import 'package:flutter/material.dart';

class CustomNavigation {
  void navigate(BuildContext context, ScreensItems screen) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        switch (screen) {
          case ScreensItems.atoms:
            return const AtomScreen();
          case ScreensItems.molecules:
            return const MoleculeScreen();
          case ScreensItems.organisms:
            return const OrganismScreen();
          case ScreensItems.templates:
            return const TemplateScreen();
          case ScreensItems.pages:
            return const PageScreen();
        }
      },
    ));
  }
}
