import 'package:ecommerce_widgets_package/domain/model/cart_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

/// Navigation item widget molecule that receives [cartProduct], [onAddQuantity], [onSubstractQuantity] and [onRemove] as parameters.
class CartItemMolecule extends StatelessWidget {
  final CartModel cartProduct;
  final VoidCallback onAddQuantity;
  final VoidCallback onSubstractQuantity;
  final VoidCallback onRemove;
  const CartItemMolecule(
      {super.key,
      required this.cartProduct,
      required this.onAddQuantity,
      required this.onSubstractQuantity,
      required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Colors.white,
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              ImageAtom(width: 100, image: cartProduct.image),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextAtom(
                        text: cartProduct.nameProduct,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextAtom(
                        text: '\$ ${cartProduct.price}',
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Material(
                          color: TokenColors.tealColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () => onSubstractQuantity.call(),
                                  icon: Icon(
                                    (cartProduct.quantity > 1)
                                        ? Icons.remove_circle_outline_rounded
                                        : Icons.delete_rounded,
                                    color: FoundationColors.errorBgColor,
                                  )),
                              CustomTextAtom(
                                text: cartProduct.quantity.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () => onAddQuantity.call(),
                                  icon: const Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: FoundationColors.primaryColor,
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {
                  onRemove.call();
                },
                icon: const Icon(
                  Icons.close_rounded,
                  color: FoundationColors.errorBgColor,
                )))
      ],
    );
  }
}
