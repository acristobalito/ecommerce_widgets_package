import 'package:ecommerce_widgets_package/foundations/foundation_typo.dart';
import 'package:flutter/material.dart';

/// Texto personalizado con la fuente Raleway definida, recibe como parametros [text] y [style].
class CustomTextAtom extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const CustomTextAtom({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    final finalStyle = style?.copyWith(fontFamily: FoundationTypo.font);
    return Text(
      text,
      style: finalStyle,
    );
  }
}
