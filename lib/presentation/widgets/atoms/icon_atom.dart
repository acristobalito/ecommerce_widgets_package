import 'package:flutter/material.dart';

/// Custom icon atom that receives [icon] and [size] as parameters.
class IconAtom extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? colorIcon;
  const IconAtom(
      {super.key, required this.icon, required this.size, this.colorIcon});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: colorIcon,
    );
  }
}
