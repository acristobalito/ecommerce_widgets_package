import 'package:ecommerce_widgets_package/components/atoms/custom_button_atom.dart';
import 'package:ecommerce_widgets_package/components/molecules/text_field_form_molecule.dart';
import 'package:flutter/material.dart';

/// Custom login form template widget that receives [onSubmit] as parameters.
class LoginFormWidgetTemplate extends StatelessWidget {
  final VoidCallback onSubmit;
  const LoginFormWidgetTemplate({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFieldFormMolecule(
              titleElement: 'E-mail',
              inputType: TextInputType.emailAddress,
              onChangeValue: () {},
              iconForm: Icons.email_rounded),
          TextFieldFormMolecule(
              titleElement: 'Contraseña',
              onChangeValue: () {},
              inputType: TextInputType.visiblePassword,
              iconForm: Icons.lock_rounded),
          CustomButtonAtom(
              onClick: () {
                if (formKey.currentState!.validate()) {
                  onSubmit.call();
                }
              },
              text: 'Ingresar')
        ],
      ),
    );
  }
}
