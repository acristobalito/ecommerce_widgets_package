import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

/// Card widget molecule that receives [product] and [onClick] as parameters.
class CardItemMolecule extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onClick;
  const CardItemMolecule(
      {super.key, required this.product, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => onClick.call(),
        child: Container(
          width: 150,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.network(
                  product.image,
                  height: 150,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextAtom(
                text: product.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              CustomTextAtom(text: '\$ ${product.price}'),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconTextMolecule(
                      icon: Icons.remove_red_eye_rounded,
                      text: product.rating.count.toString()),
                  IconTextMolecule(
                    icon: Icons.star_rate_rounded,
                    text: product.rating.rate.toString(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
