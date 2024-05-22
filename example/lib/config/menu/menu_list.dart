import 'package:example/domain/models/screens_items_model.dart';
import 'package:example/domain/models/menu_item_model.dart';
import 'package:flutter/material.dart';

const menuList = <MenuItemModel>[
  MenuItemModel(
      title: 'Átomos',
      icon: Icons.onetwothree_rounded,
      screen: ScreensItemsModel.atoms),
  MenuItemModel(
      title: 'Moléculas',
      icon: Icons.calculate,
      screen: ScreensItemsModel.molecules),
  MenuItemModel(
      title: 'Organismos',
      icon: Icons.point_of_sale,
      screen: ScreensItemsModel.organisms),
  MenuItemModel(
      title: 'Plantillas',
      icon: Icons.store_mall_directory_outlined,
      screen: ScreensItemsModel.templates),
  MenuItemModel(
      title: 'Páginas', icon: Icons.store, screen: ScreensItemsModel.pages),
];
