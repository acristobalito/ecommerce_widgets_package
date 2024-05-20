import 'package:example/config/menu_items/screens_items.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final ScreensItems screen;

  const MenuItem(
      {required this.title, required this.icon, required this.screen});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Átomos',
      icon: Icons.onetwothree_rounded,
      screen: ScreensItems.atoms),
  MenuItem(
      title: 'Moléculas',
      icon: Icons.calculate,
      screen: ScreensItems.molecules),
  MenuItem(
      title: 'Organismos',
      icon: Icons.point_of_sale,
      screen: ScreensItems.organisms),
  MenuItem(
      title: 'Plantillas',
      icon: Icons.store_mall_directory_outlined,
      screen: ScreensItems.templates),
  MenuItem(title: 'Páginas', icon: Icons.store, screen: ScreensItems.pages),
];
