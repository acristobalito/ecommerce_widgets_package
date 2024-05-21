import 'package:ecommerce_widgets_package/components/molecules/text_field_form_molecule.dart';
import 'package:flutter/material.dart';

class ItemFormMoleculeSectionWidget extends StatelessWidget {
  const ItemFormMoleculeSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFieldFormMolecule(
        iconForm: Icons.email_rounded,
        titleElement: 'E-mail',
        inputType: TextInputType.emailAddress,
        onChangeValue: () {},
      ),
    );
  }
}
