import 'package:ecommerce_widgets_package/domain/model/contact_widget_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

/// Custom contact view widget.
class ContactViewWidgetPage extends StatelessWidget {
  const ContactViewWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactData = ContactWidgetModel(
        image:
            'https://lh3.googleusercontent.com/a/ACg8ocLBWJORaQFE3hlH8CcAEDak3I0dAvGrJfYTH2hHeIG6TSg1Mas=s288-c-no',
        name: 'Antony Cristobal Zambrano',
        occupation: 'Ingeniero de sistemas e informática',
        email: 'antony.cristobalz@pragma.com.co',
        phone: '+51 975188380',
        address: 'Psj. 10 de Agosto S/N - El Tambo, Huancayo',
        country: 'Desde Perú');
    return ContactViewWidgetTemplate(contact: contactData);
  }
}
