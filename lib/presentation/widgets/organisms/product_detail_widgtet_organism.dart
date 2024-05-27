import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

/// Custom navigation widget organism that receives [product] as parameters.
class ProductDetailWidgtetOrganism extends StatelessWidget {
  final ProductWidgetModel product;
  const ProductDetailWidgtetOrganism({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageAtom(
            image: product.image,
            height: 400,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextAtom(
            text: product.title,
            lines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextAtom(
            textAlign: TextAlign.center,
            text: product.description,
            lines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextAtom(
              text: '\$ ${product.price.toString()}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          const SizedBox(
            height: 20,
          ),
          CustomTextAtom(text: 'Categoria: ${product.category}'),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconTextVerticalMolecule(
                icon: Icons.remove_red_eye_rounded,
                itemName: product.rating.count.toString()),
            IconTextVerticalMolecule(
                icon: Icons.star_rate_rounded,
                itemName: product.rating.rate.toString()),
          ])
        ],
      ),
    );
  }
}
