import 'package:ecommerce_widgets_package/foundations/foundation_typo.dart';
import 'package:flutter/material.dart';

/// Custom text atom with the Raleway font defined, receives [text] and [style] as parameters.
class CustomTextAtom extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? lines;
  const CustomTextAtom({super.key, required this.text, this.style, this.lines});

  @override
  Widget build(BuildContext context) {
    final finalStyle = style?.copyWith(fontFamily: FoundationTypo.font);
    return Text(
      text,
      style: finalStyle,
      maxLines: lines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
