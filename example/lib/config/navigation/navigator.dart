import 'package:example/domain/models/screens_items_model.dart';
import 'package:example/presentation/screens/screens.dart';

import 'package:flutter/material.dart';

class CustomNavigation {
  void navigate(BuildContext context, ScreensItemsModel screen) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        switch (screen) {
          case ScreensItemsModel.atoms:
            return const AtomScreen();
          case ScreensItemsModel.molecules:
            return const MoleculeScreen();
          case ScreensItemsModel.organisms:
            return const OrganismScreen();
          case ScreensItemsModel.templates:
            return const TemplateScreen();
          case ScreensItemsModel.pages:
            return const PageScreen();
        }
      },
    ));
  }
}
