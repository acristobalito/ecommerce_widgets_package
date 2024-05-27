/// Model used for **CartViewWidgetTemplate**
class CartWidgetModel {
  final int id;
  final String image;
  final String nameProduct;
  final double price;
  final int quantity;

  CartWidgetModel(
      {required this.id,
      required this.image,
      required this.nameProduct,
      required this.price,
      required this.quantity});
}
