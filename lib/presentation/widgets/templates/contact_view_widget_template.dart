import 'package:ecommerce_widgets_package/domain/model/contact_widget_model.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/organisms/contact_widget_organism.dart';
import 'package:flutter/material.dart';

/// Custom contact view template widget that receives [contact] as parameters.
class ContactViewWidgetTemplate extends StatelessWidget {
  final ContactWidgetModel contact;
  const ContactViewWidgetTemplate({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ContactWidgetOrganism(contact: contact);
  }
}
