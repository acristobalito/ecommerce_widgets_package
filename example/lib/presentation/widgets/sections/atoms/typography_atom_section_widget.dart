import 'package:ecommerce_widgets_package/components/atoms/custom_text_atom.dart';
import 'package:flutter/material.dart';

class TypographyAtomSectionWidget extends StatelessWidget {
  const TypographyAtomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextAtom(
          text: 'Texto grande y largooo en negrita de una linea',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        CustomTextAtom(
          text:
              'Texto pequeño en de 2 lineas en negrita Texto pequeño en de 2 lineas Texto pequeño en de 2 lineas Texto pequeño en de 2 lineas Texto pequeño en de 2 lineas',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          lines: 2,
        ),
        CustomTextAtom(
          text: 'Texto pequeño normal',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
        )
      ],
    );
  }
}
