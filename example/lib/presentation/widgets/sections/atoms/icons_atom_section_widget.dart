import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class IconsAtomSectionWidget extends StatelessWidget {
  const IconsAtomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      spacing: 50,
      children: [
        IconAtom(
          icon: Icons.person_rounded,
          size: 40,
          colorIcon: FoundationColors.warningBgColor,
        ),
        IconAtom(icon: Icons.lock_rounded, size: 40),
        IconAtom(
          icon: Icons.settings_rounded,
          size: 40,
          colorIcon: FoundationColors.errorBgColor,
        ),
        IconAtom(icon: Icons.contact_support_rounded, size: 40),
        IconAtom(
          icon: Icons.shopping_cart_rounded,
          size: 40,
          colorIcon: FoundationColors.successBgColor,
        ),
        IconAtom(icon: Icons.web_stories_rounded, size: 40),
        IconAtom(icon: Icons.search_rounded, size: 40),
      ],
    );
  }
}
