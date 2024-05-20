import 'package:ecommerce_widgets_package/foundations/foundation_colors.dart';
import 'package:flutter/material.dart';

/// Retorna el tema a emplear en la app el cual es el color primario definido en el archivo [FoundationColors]
final ecommerceTheme = ThemeData(
    colorSchemeSeed: FoundationColors.primaryColor,
    appBarTheme: const AppBarTheme(centerTitle: false));
