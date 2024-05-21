import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:example/config/menu_items/menu_item.dart';
import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  final MenuItem menuItem;
  final VoidCallback onTap;
  const CustomListTileWidget(
      {super.key, required this.menuItem, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menuItem.icon),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => onTap.call(),
      title: CustomTextAtom(
        text: menuItem.title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
