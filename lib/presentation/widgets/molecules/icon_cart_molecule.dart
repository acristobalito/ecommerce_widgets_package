import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

/// Cart icon molecule widget that receives [cartCount] and [onClick] as parameters.
class IconCartMolecule extends StatelessWidget {
  final VoidCallback onClick;
  final String cartCount;
  const IconCartMolecule(
      {super.key, required this.onClick, required this.cartCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(shape: BoxShape.circle),
      clipBehavior: Clip.hardEdge,
      child: Material(
        child: InkWell(
          onTap: () => onClick.call(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                const Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    IconAtom(
                      icon: Icons.shopping_cart_rounded,
                      size: 30,
                      colorIcon: FoundationColors.btnAlternativeBgColor,
                    )
                  ],
                ),
                Container(
                  width: 20,
                  height: 20,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  clipBehavior: Clip.hardEdge,
                  child: CustomTextAtom(
                    text: cartCount,
                    style: const TextStyle(
                        fontSize: 9, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
