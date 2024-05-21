import 'package:ecommerce_widgets_package/components/atoms/image_atom.dart';
import 'package:flutter/material.dart';

class ImagesAtomSectionWidget extends StatelessWidget {
  const ImagesAtomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: AlignmentDirectional.center,
      child: const ImageAtom(
        image:
            'https://www.libreriahuequito.com/public/images/productos/default.png',
        size: 100,
      ),
    );
  }
}
