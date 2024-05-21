import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:example/presentation/widgets/sections/sections.dart';

import 'package:flutter/material.dart';

class OrganismsListWidget extends StatelessWidget {
  const OrganismsListWidget({super.key});

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
              NavigationOrganismSectionWidget(),
              SizedBox(
                height: 10,
              ),
              CustomTextAtom(
                text: 'LISTA DE TARJETAS',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              ListCardOrganismSectionWidget()
            ],
          ),
        ),
      ),
    );
  }
}
