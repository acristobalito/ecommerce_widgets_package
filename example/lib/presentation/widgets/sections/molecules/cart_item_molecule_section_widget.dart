import 'package:ecommerce_widgets_package/domain/model/cart_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class CartItemMoleculeSectionWidget extends StatelessWidget {
  final CartModel cartProduct;
  final VoidCallback onAddQuantity;
  final VoidCallback onSubstractQuantity;
  final VoidCallback onRemove;
  const CartItemMoleculeSectionWidget(
      {super.key,
      required this.cartProduct,
      required this.onAddQuantity,
      required this.onSubstractQuantity,
      required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return CartItemMolecule(
      cartProduct: cartProduct,
      onAddQuantity: () => onAddQuantity.call(),
      onSubstractQuantity: () => onSubstractQuantity.call(),
      onRemove: () => onRemove.call(),
    );
  }
}
