import 'package:example/config/menu_items/menu_item.dart';
import 'package:example/config/navigation/navigator.dart';
import 'package:example/presentation/widgets/custom_list_tile_widget.dart';
import 'package:flutter/material.dart';

class MenuItemsViewWidget extends StatelessWidget {
  const MenuItemsViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) => CustomListTileWidget(
        menuItem: appMenuItems[index],
        onTap: () {
          CustomNavigation().navigate(context, appMenuItems[index].screen);
        },
      ),
    );
  }
}
