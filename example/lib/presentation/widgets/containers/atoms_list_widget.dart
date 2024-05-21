import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:example/presentation/widgets/sections/sections.dart';

import 'package:flutter/material.dart';

class AtomsListWidget extends StatelessWidget {
  const AtomsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextAtom(
                text: 'TIPOGRAFÍA',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              TypographyAtomSectionWidget(),
              SizedBox(
                height: 10,
              ),
              CustomTextAtom(
                text: 'ICONOS',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              IconsAtomSectionWidget(),
              SizedBox(
                height: 10,
              ),
              CustomTextAtom(
                text: 'BOTONES',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              ButtonsAtomSectionWidget(),
              SizedBox(
                height: 10,
              ),
              CustomTextAtom(
                text: 'BOTONES PERSONALIZADOS',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              CustomButtonsAtomSectionWidget(),
              SizedBox(
                height: 10,
              ),
              CustomTextAtom(
                text: 'CAMPOS DE FORMULARIO',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              TextFieldsAtomSectionWidgets(),
              SizedBox(
                height: 10,
              ),
              CustomTextAtom(
                text: 'IMAGEN',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              ImagesAtomSectionWidget()
            ],
          ),
        ),
      ),
    );
  }
}
