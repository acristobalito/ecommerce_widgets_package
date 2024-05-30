import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

/// Form text field item widget molecule that receives [titleElement], [textStyleElement], [textStyleForm], [iconForm], [fieldValidator], [colorIcon], [inputType], [hintTextField], [inputFormatter] and [onChangeValue] as parameters.
class TextFieldFormMolecule extends StatelessWidget {
  final String titleElement;
  final TextStyle? textStyleElement;
  final TextStyle? textStyleForm;
  final IconData iconForm;
  final TextInputType? inputType;
  final String? hintTextField;
  final String? fieldValidator;
  final Color? colorIcon;
  final List<TextInputFormatter>? inputFormatter;
  final Function(String?) onChangeValue;

  const TextFieldFormMolecule(
      {super.key,
      required this.titleElement,
      this.textStyleElement,
      this.hintTextField,
      required this.onChangeValue,
      this.inputType,
      this.inputFormatter,
      required this.iconForm,
      this.fieldValidator,
      this.textStyleForm,
      this.colorIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconTextMolecule(
            icon: iconForm,
            text: titleElement,
            spicing: 10,
            size: 20,
            colorIcon: colorIcon,
            textStyle: textStyleForm,
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextFieldAtom(
            onTapContainer: () {},
            onChangeValue: (value) => onChangeValue.call(value),
            hintText: hintTextField,
            keyBoardType: inputType,
            inputFormaters: inputFormatter,
            fieldValidator: fieldValidator,
          )
        ],
      ),
    );
  }
}
