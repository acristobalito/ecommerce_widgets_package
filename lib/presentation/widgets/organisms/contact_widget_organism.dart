import 'package:ecommerce_widgets_package/domain/model/contact_widget_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

/// Custom contact widget organism that receives [contact] as parameters.
class ContactWidgetOrganism extends StatelessWidget {
  final ContactWidgetModel contact;
  const ContactWidgetOrganism({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(contact.image),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextAtom(
            text: contact.name,
            lines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextAtom(
            text: contact.occupation,
            lines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          IconTextMolecule(
              spicing: 10,
              alignCenter: true,
              icon: Icons.email_rounded,
              text: contact.email),
          const SizedBox(
            height: 5,
          ),
          IconTextMolecule(
              spicing: 10,
              alignCenter: true,
              icon: Icons.phone_rounded,
              text: contact.phone),
          const SizedBox(
            height: 5,
          ),
          IconTextMolecule(
              spicing: 10,
              alignCenter: true,
              icon: Icons.location_on_rounded,
              text: contact.address),
          const SizedBox(
            height: 5,
          ),
          IconTextMolecule(
              spicing: 10,
              alignCenter: true,
              icon: Icons.flag_sharp,
              text: contact.country)
        ],
      ),
    );
  }
}
