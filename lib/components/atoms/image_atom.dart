import 'package:flutter/material.dart';

/// Custom image atom that receives [image] and [size] as parameters.
class ImageAtom extends StatelessWidget {
  final String image;
  final double? size;
  const ImageAtom({super.key, required this.image, this.size});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      height: size,
    );
  }
}
