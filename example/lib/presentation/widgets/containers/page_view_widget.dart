import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      ProductWidgetModel(
          id: 1,
          title: 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
          image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          price: 109.95,
          rating: RatingWidgetModel(rate: 3.9, count: 120),
          description:
              'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday',
          category: 'men\'s clothing'),
      ProductWidgetModel(
          id: 2,
          title: 'Mens Casual Premium Slim Fit T-Shirts ',
          image:
              'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
          price: 22.3,
          rating: RatingWidgetModel(rate: 4.1, count: 259),
          description:
              'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.',
          category: 'men\'s clothing'),
      ProductWidgetModel(
          id: 3,
          title: 'Mens Cotton Jacket',
          image: 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',
          price: 55.99,
          rating: RatingWidgetModel(rate: 4.7, count: 500),
          description:
              'great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.',
          category: 'men\'s clothing'),
      ProductWidgetModel(
          id: 4,
          title: 'Mens Casual Slim Fit',
          image: 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg',
          price: 15.99,
          rating: RatingWidgetModel(rate: 2.1, count: 430),
          description:
              'The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.',
          category: 'men \'s clothing'),
      ProductWidgetModel(
          id: 5,
          title:
              'John Hardy Women\'s Legends Naga Gold & Silver Dragon Station Chain Bracelet',
          image:
              'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
          price: 695.0,
          rating: RatingWidgetModel(rate: 4.6, count: 400),
          description:
              'From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean\'s pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.',
          category: 'jewelery')
    ];
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        child: SearchViewWidgetPage(
          onTapSearchBar: () {},
          products: products,
          onSearch: () {},
          onProductClicked: () {},
        ),
      ),
    );
  }
}
