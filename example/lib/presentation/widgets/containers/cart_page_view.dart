import 'package:ecommerce_widgets_package/domain/model/cart_widget_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class CartPageView extends StatelessWidget {
  const CartPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CartViewWidgetTemplate(
        cartList: [
          CartWidgetModel(
              id: 1,
              image:
                  'https://www.libreriahuequito.com/public/images/productos/default.png',
              nameProduct: 'Producto',
              price: 2000.00,
              quantity: 1)
        ],
        priceTotal: 100,
        onAddQuantity: (p0) {},
        onSubstractQuantity: (p0) {},
        onRemove: (p0) {},
        onClickBuyNow: () {},
      ),
    );
  }
}
