import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:example/presentation/widgets/sections/sections.dart';
import 'package:flutter/material.dart';

class TemplateListWidget extends StatelessWidget {
  const TemplateListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextAtom(
              text: 'Formulario',
              style: TextStyle(
                  color: FoundationColors.txtSecondaryColor,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            FormTemplateSectionWidget(),
            SizedBox(
              height: 10,
            ),
            CustomTextAtom(
              text: 'Busqueda producto',
              style: TextStyle(
                  color: FoundationColors.txtSecondaryColor,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(child: ListProductTemplateSectionWidget()),
          ],
        ),
      ),
    );
  }
}
