import 'package:ecommerce_widgets_package/domain/model/submit_sign_up_widget_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Custom login form template widget that receives [textStyle], [btnStyle], [colorIcon], [textStyleForm], [isLoading] and [onSubmit] as parameters.
class SignUpFormWidgetTemplate<T> extends StatelessWidget {
  final TextStyle? textStyle;
  final ButtonStyle? btnStyle;
  final Color? colorIcon;
  final TextStyle? textStyleForm;
  final Function(SubmitSignUpWidgetModel) onSubmit;
  final bool isLoading;
  const SignUpFormWidgetTemplate(
      {super.key,
      this.textStyle,
      this.btnStyle,
      required this.onSubmit,
      required this.isLoading,
      this.colorIcon,
      this.textStyleForm});

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
            colorIcon: colorIcon,
            textStyleElement: textStyleForm,
          ),
          TextFieldFormMolecule(
            titleElement: 'Ingresa tu apellido',
            inputType: TextInputType.name,
            onChangeValue: (value) {
              lastName = value ?? '';
            },
            iconForm: Icons.person_add_alt_rounded,
            fieldValidator: 'Ingrese un apellido válido',
            colorIcon: colorIcon,
            textStyleElement: textStyleForm,
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
            colorIcon: colorIcon,
            textStyleElement: textStyleForm,
          ),
          TextFieldFormMolecule(
            titleElement: 'Ingresa tu número de teléfono',
            inputType: TextInputType.phone,
            onChangeValue: (value) {
              phone = value ?? '';
            },
            iconForm: Icons.phone_rounded,
            fieldValidator: 'Ingrese un teléfono válido',
            colorIcon: colorIcon,
            textStyleElement: textStyleForm,
          ),
          TextFieldFormMolecule(
            titleElement: 'Ingresa un nombre de usuario',
            inputType: TextInputType.name,
            onChangeValue: (value) {
              userName = value ?? '';
            },
            iconForm: Icons.add_reaction_rounded,
            fieldValidator: 'Ingrese un nombre de usuario válido',
            colorIcon: colorIcon,
            textStyleElement: textStyleForm,
          ),
          TextFieldFormMolecule(
            titleElement: 'Ingresa una contraseña',
            onChangeValue: (value) {
              pass = value ?? '';
            },
            inputType: TextInputType.visiblePassword,
            iconForm: Icons.lock_rounded,
            fieldValidator: 'Ingrese una contraseña válida',
            colorIcon: colorIcon,
            textStyleElement: textStyleForm,
          ),
          SizedBox(
            width: double.infinity,
            child: Consumer<T>(
              builder: (context, _, child) => CustomButtonAtom(
                  isEnable: !isLoading,
                  onClick: () {
                    if (formKey.currentState!.validate()) {
                      onSubmit.call(SubmitSignUpWidgetModel(
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
            ),
          )
        ],
      ),
    );
  }
}
