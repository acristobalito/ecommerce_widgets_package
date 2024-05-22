import 'package:flutter/material.dart';

/// Custom image atom that receives [image] and [size] as parameters.
class ImageAtom extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  const ImageAtom(
      {super.key, required this.image, this.width, this.height, this.boxFit});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      height: height,
      width: width,
      fit: boxFit,
    );
  }
}
