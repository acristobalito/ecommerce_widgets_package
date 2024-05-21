import 'package:ecommerce_widgets_package/components/atoms/custom_text_atom.dart';
import 'package:flutter/material.dart';

/// Custom button atom that receives [onClick], [btnStyle], [text] and [textStyle] as parameters.
class CustomButtonAtom extends StatelessWidget {
  final VoidCallback onClick;
  final String text;
  final TextStyle? textStyle;
  final ButtonStyle? btnStyle;
  const CustomButtonAtom(
      {super.key,
      required this.onClick,
      required this.text,
      this.textStyle,
      this.btnStyle});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => onClick.call(),
      style: btnStyle,
      child: CustomTextAtom(
        text: text,
        style: textStyle,
      ),
    );
  }
}
