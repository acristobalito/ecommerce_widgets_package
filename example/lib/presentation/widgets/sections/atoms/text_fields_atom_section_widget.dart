import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class TextFieldsAtomSectionWidgets extends StatelessWidget {
  const TextFieldsAtomSectionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldAtom(
          onTapContainer: () {},
          onChangeValue: (value) {},
          hintText: 'Campo email',
          keyBoardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextFieldAtom(
          onTapContainer: () {},
          onChangeValue: (value) {},
          hintText: 'Campo password',
          keyBoardType: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}
