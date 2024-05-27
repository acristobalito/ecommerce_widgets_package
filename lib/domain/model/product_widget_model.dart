import 'package:ecommerce_widgets_package/domain/model/rating_widget_model.dart';

/// Model used for **CardItemMolecule**
class ProductWidgetModel {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  RatingModel rating;

  ProductWidgetModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
}
