import 'package:ecommerce_widgets_package/presentation/widgets/atoms/custom_button_atom.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/molecules/text_field_form_molecule.dart';
import 'package:flutter/material.dart';

/// Custom login form template widget that receives [onSubmit] as parameters.
class LoginFormWidgetTemplate extends StatelessWidget {
  final TextStyle? textStyle;
  final ButtonStyle? btnStyle;
  final VoidCallback onSubmit;
  const LoginFormWidgetTemplate(
      {super.key, required this.onSubmit, this.textStyle, this.btnStyle});

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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            width: double.infinity,
            child: CustomButtonAtom(
                onClick: () {
                  if (formKey.currentState!.validate()) {
                    onSubmit.call();
                  }
                },
                textStyle: textStyle,
                btnStyle: btnStyle,
                text: 'Ingresar'),
          )
        ],
      ),
    );
  }
}
