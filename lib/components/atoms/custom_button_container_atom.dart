import 'package:flutter/material.dart';

/// Custom button atom that receives [colorButton], [widgetValue] and [onClick] as parameters.
class CustomButtonContainerAtom extends StatelessWidget {
  final Color? colorButton;
  final Widget? widgetValue;
  final VoidCallback onClick;
  const CustomButtonContainerAtom(
      {super.key, this.colorButton, this.widgetValue, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colorButton,
        child: InkWell(
          onTap: () => onClick.call(),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: widgetValue),
        ),
      ),
    );
  }
}
