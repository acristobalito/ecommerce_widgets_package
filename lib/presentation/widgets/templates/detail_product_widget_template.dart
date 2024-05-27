import 'package:ecommerce_widgets_package/domain/model/product_widget_model.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/organisms/product_detail_widgtet_organism.dart';
import 'package:flutter/material.dart';

/// Custom login form template widget that receives [product] as parameters.
class DetailProductWidgetTemplate extends StatelessWidget {
  final ProductWidgetModel product;
  const DetailProductWidgetTemplate({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ProductDetailWidgtetOrganism(
      product: product,
    ));
  }
}
