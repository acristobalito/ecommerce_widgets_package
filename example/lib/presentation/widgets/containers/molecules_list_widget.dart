import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:example/presentation/widgets/sections/molecules/cart_icon_molecule_section_widget.dart';
import 'package:example/presentation/widgets/sections/sections.dart';
import 'package:flutter/material.dart';

class MoleculesListWidget extends StatelessWidget {
  const MoleculesListWidget({super.key});

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
                text: 'NAVEGACIÓN',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              NavigationMoleculeSectionWidget(),
              SizedBox(
                height: 10,
              ),
              CustomTextAtom(
                text: 'CART ICON',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              CartIconMoleculeSectionWidget(),
              SizedBox(
                height: 10,
              ),
              CustomTextAtom(
                text: 'FORMULARIO',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              ItemFormMoleculeSectionWidget(),
              SizedBox(
                height: 10,
              ),
              CustomTextAtom(
                text: 'TARJETAS',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              CardMoleculeSectionWidget()
            ],
          ),
        ),
      ),
    );
  }
}
