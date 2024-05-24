import 'package:ecommerce_widgets_package/presentation/widgets/atoms/custom_text_atom.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/atoms/icon_atom.dart';
import 'package:flutter/material.dart';

/// Section of rating molecule that receives [icon], [size], [spicing] and [text] as parameters.
class IconTextMolecule extends StatelessWidget {
  final IconData icon;
  final String text;
  final double size;
  final double spicing;
  final bool alignCenter;
  const IconTextMolecule(
      {super.key,
      required this.icon,
      required this.text,
      this.size = 15,
      this.alignCenter = false,
      this.spicing = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          alignCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
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
