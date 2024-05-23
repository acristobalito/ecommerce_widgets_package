import 'package:ecommerce_widgets_package/domain/model/submit_sign_up_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpFormWidgetTemplate extends StatelessWidget {
  final TextStyle? textStyle;
  final ButtonStyle? btnStyle;
  final Function(SubmitSignUpModel) onSubmit;
  const SignUpFormWidgetTemplate(
      {super.key, this.textStyle, this.btnStyle, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    String email = '';
    String pass = '';
    String userName = '';
    String lastName = '';
    String firstName = '';
    String phone = '';
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFieldFormMolecule(
            titleElement: 'Ingresa tu nombre',
            inputType: TextInputType.name,
            onChangeValue: (value) {
              firstName = value ?? '';
            },
            iconForm: Icons.person_add_alt_rounded,
            fieldValidator: 'Ingrese un nombre válido',
          ),
          TextFieldFormMolecule(
            titleElement: 'Ingresa tu apellido',
            inputType: TextInputType.name,
            onChangeValue: (value) {
              lastName = value ?? '';
            },
            iconForm: Icons.person_add_alt_rounded,
            fieldValidator: 'Ingrese un apellido válido',
          ),
          TextFieldFormMolecule(
            titleElement: 'Ingresa tu E-mail',
            inputType: TextInputType.emailAddress,
            onChangeValue: (value) {
              email = value ?? '';
            },
            iconForm: Icons.email_rounded,
            hintTextField: 'example@gmail.com',
            fieldValidator: 'Ingrese un e-mail válido',
            inputFormatter: [
              FilteringTextInputFormatter.allow(RegExp(
                  r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                  r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                  r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                  r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                  r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                  r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                  r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])'))
            ],
          ),
          TextFieldFormMolecule(
            titleElement: 'Ingresa tu número de teléfono',
            inputType: TextInputType.phone,
            onChangeValue: (value) {
              phone = value ?? '';
            },
            iconForm: Icons.phone_rounded,
            fieldValidator: 'Ingrese un teléfono válido',
          ),
          TextFieldFormMolecule(
            titleElement: 'Ingresa un nombre de usuario',
            inputType: TextInputType.name,
            onChangeValue: (value) {
              userName = value ?? '';
            },
            iconForm: Icons.add_reaction_rounded,
            fieldValidator: 'Ingrese un nombre de usuario válido',
          ),
          TextFieldFormMolecule(
              titleElement: 'Ingresa una contraseña',
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
                    onSubmit.call(SubmitSignUpModel(
                        email: email,
                        userName: userName,
                        password: pass,
                        firstName: firstName,
                        lastName: lastName,
                        phone: phone));
                  }
                },
                textStyle: textStyle,
                btnStyle: btnStyle,
                text: 'Registrar'),
          )
        ],
      ),
    );
  }
}
