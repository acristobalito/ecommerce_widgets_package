import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class CustomButtonsAtomSectionWidget extends StatelessWidget {
  const CustomButtonsAtomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(alignment: WrapAlignment.center, spacing: 10, children: [
        CustomButtonContainerAtom(
          onClick: () {},
          widgetValue: const CustomTextAtom(
            text: 'Agregar',
            style: TextStyle(color: Colors.white),
          ),
          colorButton: FoundationColors.primaryColor,
        ),
        CustomButtonContainerAtom(
          onClick: () {},
          widgetValue: const CustomTextAtom(
            text: 'Producto Agregado',
            style: TextStyle(color: Colors.white),
          ),
          colorButton: FoundationColors.customButtonAddedBgColor,
        ),
      ]),
    );
  }
}
