import 'package:ecommerce_widgets_package/domain/model/submit_login_model.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/atoms/custom_button_atom.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/molecules/text_field_form_molecule.dart';
import 'package:flutter/material.dart';

/// Custom login form template widget that receives [onSubmit] as parameters.
class LoginFormWidgetTemplate extends StatelessWidget {
  final TextStyle? textStyle;
  final ButtonStyle? btnStyle;
  final Function(SubmitLoginModel) onSubmit;
  const LoginFormWidgetTemplate(
      {super.key, required this.onSubmit, this.textStyle, this.btnStyle});

  @override
  Widget build(BuildContext context) {
    String email = '';
    String pass = '';
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFieldFormMolecule(
            titleElement: 'E-mail',
            inputType: TextInputType.emailAddress,
            onChangeValue: (value) {
              email = value ?? '';
            },
            iconForm: Icons.email_rounded,
            hintTextField: 'example@gmail.com',
            fieldValidator: 'Ingrese un e-mail válido',
          ),
          TextFieldFormMolecule(
              titleElement: 'Contraseña',
              onChangeValue: (value) {
                pass = value ?? '';
              },
              inputType: TextInputType.visiblePassword,
              iconForm: Icons.lock_rounded,
              fieldValidator: 'Ingrese una contraseña válida'),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            width: double.infinity,
            child: CustomButtonAtom(
                onClick: () {
                  if (formKey.currentState!.validate()) {
                    onSubmit.call(SubmitLoginModel(email: email, pass: pass));
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
