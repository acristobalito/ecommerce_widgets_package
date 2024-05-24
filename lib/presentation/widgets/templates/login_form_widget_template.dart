import 'package:ecommerce_widgets_package/domain/model/submit_login_model.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/atoms/custom_button_atom.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/molecules/text_field_form_molecule.dart';
import 'package:flutter/material.dart';

/// Custom login form template widget that receives [textStyle], [btnStyle], [isLoading] and [onSubmit] as parameters.
class LoginFormWidgetTemplate extends StatelessWidget {
  final TextStyle? textStyle;
  final ButtonStyle? btnStyle;
  final bool isLoading;
  final Function(SubmitLoginModel) onSubmit;
  const LoginFormWidgetTemplate(
      {super.key,
      required this.onSubmit,
      this.textStyle,
      this.btnStyle,
      required this.isLoading});

  @override
  Widget build(BuildContext context) {
    String userName = '';
    String pass = '';
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFieldFormMolecule(
            titleElement: 'Nombre de usuario',
            inputType: TextInputType.name,
            onChangeValue: (value) {
              userName = value ?? '';
            },
            iconForm: Icons.person_rounded,
            fieldValidator: 'Ingrese un usuario válido',
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
                isEnable: !isLoading,
                onClick: () {
                  if (formKey.currentState!.validate()) {
                    onSubmit
                        .call(SubmitLoginModel(userName: userName, pass: pass));
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
