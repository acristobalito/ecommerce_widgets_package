/// Model used for **CartViewWidgetTemplate**
class CartModel {
  final int id;
  final String image;
  final String nameProduct;
  final double price;
  final int quantity;

  CartModel(
      {required this.id,
      required this.image,
      required this.nameProduct,
      required this.price,
      required this.quantity});
}
