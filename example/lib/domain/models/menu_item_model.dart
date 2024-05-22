import 'package:example/domain/models/screens_items_model.dart';
import 'package:flutter/material.dart';

class MenuItemModel {
  final String title;
  final IconData icon;
  final ScreensItemsModel screen;

  const MenuItemModel(
      {required this.title, required this.icon, required this.screen});
}
