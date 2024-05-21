import 'package:ecommerce_widgets_package/foundations/foundation_colors.dart';
import 'package:flutter/material.dart';

/// Returns the theme to be used in the app, which is the primary color defined in the [FoundationColors] file.
final ecommerceTheme = ThemeData(
    colorSchemeSeed: FoundationColors.primaryColor,
    appBarTheme: const AppBarTheme(centerTitle: false));
