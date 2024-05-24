import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class CartIconMoleculeSectionWidget extends StatelessWidget {
  const CartIconMoleculeSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: IconCartMolecule(onClick: () {}, cartCount: '10'),
    );
  }
}
