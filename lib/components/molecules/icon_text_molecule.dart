import 'package:ecommerce_widgets_package/components/atoms/custom_text_atom.dart';
import 'package:ecommerce_widgets_package/components/atoms/icon_atom.dart';
import 'package:flutter/material.dart';

/// Section of rating molecule that receives [icon], [size], [spicing] and [text] as parameters.
class IconTextMolecule extends StatelessWidget {
  final IconData icon;
  final String text;
  final double size;
  final double spicing;
  const IconTextMolecule(
      {super.key,
      required this.icon,
      required this.text,
      this.size = 15,
      this.spicing = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconAtom(
          icon: icon,
          size: size,
        ),
        SizedBox(
          width: spicing,
        ),
        CustomTextAtom(text: text)
      ],
    );
  }
}
