import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class FormTemplateSectionWidget extends StatelessWidget {
  const FormTemplateSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginFormWidgetTemplate(
      onSubmit: (submit) {},
      isLoading: false,
    );
  }
}
