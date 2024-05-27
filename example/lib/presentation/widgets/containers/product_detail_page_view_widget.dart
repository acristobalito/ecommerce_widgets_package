import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class ProductDetailPageViewWidget extends StatelessWidget {
  const ProductDetailPageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ProductWidgetModel(
        id: 1,
        title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        price: 109.95,
        description:
            "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
        category: "men's clothing",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
        rating: RatingWidgetModel(rate: 3.9, count: 120));
    return SafeArea(
      child: DetailProductWidgetTemplate(
        product: product,
      ),
    );
  }
}
