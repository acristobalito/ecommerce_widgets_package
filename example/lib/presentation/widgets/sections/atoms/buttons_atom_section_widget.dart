import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class ButtonsAtomSectionWidget extends StatelessWidget {
  const ButtonsAtomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 10,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          CustomButtonAtom(
            onClick: () {},
            text: 'Iniciar sesión',
            btnStyle: const ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(FoundationColors.successBgColor)),
          ),
          CustomButtonAtom(
            onClick: () {},
            text: 'Registrarse',
            btnStyle: const ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(FoundationColors.warningBgColor)),
          ),
          CustomButtonAtom(
            onClick: () {},
            text: 'Cancelar',
            btnStyle: const ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(FoundationColors.errorBgColor)),
          )
        ],
      ),
    );
  }
}
