import 'package:ecommerce_widgets_package/domain/model/cart_widget_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

/// Custom cart view template widget that receives [cartList], [onAddQuantity], [onSubstractQuantity], [onRemove], [onClickBuyNow] and [priceTotal] as parameters.
class CartViewWidgetTemplate extends StatelessWidget {
  final List<CartWidgetModel> cartList;
  final Function(CartWidgetModel) onAddQuantity;
  final Function(CartWidgetModel) onSubstractQuantity;
  final Function(CartWidgetModel) onRemove;
  final VoidCallback onClickBuyNow;
  final double priceTotal;
  final ButtonStyle? btnStyle;
  final TextStyle? txtStyle;
  const CartViewWidgetTemplate(
      {super.key,
      required this.cartList,
      required this.onAddQuantity,
      required this.onSubstractQuantity,
      required this.onRemove,
      required this.onClickBuyNow,
      required this.priceTotal,
      this.btnStyle,
      this.txtStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemCount: cartList.length,
          itemBuilder: (context, index) => CartItemMolecule(
              cartProduct: cartList[index],
              onAddQuantity: () => onAddQuantity.call(cartList[index]),
              onSubstractQuantity: () =>
                  onSubstractQuantity.call(cartList[index]),
              onRemove: () => onRemove.call(cartList[index])),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomTextAtom(
              text: 'Total:',
              style: TextStyle(fontSize: 18),
            ),
            CustomTextAtom(
              text: '\$ $priceTotal',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: CustomButtonAtom(
            onClick: () => onClickBuyNow.call(),
            text: 'Comprar',
            isEnable: true,
            btnStyle: btnStyle,
            textStyle: txtStyle,
          ),
        )
      ],
    );
  }
}
