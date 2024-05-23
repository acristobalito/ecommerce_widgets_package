import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Custom text flied atom that receives [hintText], [prefixIcon], [keyBoardType], [onChangeValue] and [inputFormaters] as parameters.
class CustomTextFieldAtom extends StatelessWidget {
  final String? hintText;
  final String? fieldValidator;
  final TextInputType? keyBoardType;
  final Widget? prefixIcon;
  final Function(String?) onChangeValue;
  final List<TextInputFormatter>? inputFormaters;
  const CustomTextFieldAtom(
      {super.key,
      this.hintText,
      this.keyBoardType,
      required this.onChangeValue,
      this.inputFormaters,
      this.prefixIcon,
      this.fieldValidator});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final outlinedInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: FoundationColors.primaryColor),
        borderRadius: BorderRadius.circular(10));
    final inputDecoration = InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        enabledBorder: outlinedInputBorder,
        focusedBorder: outlinedInputBorder,
        filled: true);
    return TextFormField(
        obscureText:
            (keyBoardType == TextInputType.visiblePassword) ? true : false,
        style: const TextStyle(fontFamily: FoundationTypo.font),
        keyboardType: keyBoardType,
        onTapOutside: (event) => focusNode.unfocus(),
        focusNode: focusNode,
        controller: textController,
        decoration: inputDecoration,
        onChanged: (_) {
          onChangeValue.call(textController.text);
        },
        inputFormatters: inputFormaters,
        validator: (value) =>
            (value == null || value.isEmpty) ? fieldValidator : null);
  }
}
