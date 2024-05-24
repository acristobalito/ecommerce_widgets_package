import 'package:ecommerce_widgets_package/foundations/foundation_colors.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/atoms/custom_text_atom.dart';
import 'package:flutter/material.dart';

/// Custom button atom that receives [onClick], [btnStyle], [text] and [textStyle] as parameters.
class CustomButtonAtom extends StatelessWidget {
  final VoidCallback onClick;
  final String text;
  final TextStyle? textStyle;
  final ButtonStyle? btnStyle;
  final bool isEnable;
  const CustomButtonAtom(
      {super.key,
      required this.onClick,
      required this.text,
      this.textStyle,
      this.btnStyle,
      required this.isEnable});

  @override
  Widget build(BuildContext context) {
    final btnBgColor = isEnable
        ? btnStyle
        : const ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(FoundationColors.disableBtnColor));
    final finalTextStyle =
        isEnable ? textStyle : textStyle?.copyWith(color: Colors.white);
    return FilledButton(
      onPressed: () => isEnable ? onClick.call() : null,
      style: btnBgColor,
      child: CustomTextAtom(
        text: text,
        style: finalTextStyle,
      ),
    );
  }
}
