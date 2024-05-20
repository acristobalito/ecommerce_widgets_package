import 'package:ecommerce_widgets_package/foundations/themes/ecommerce_theme.dart';
import 'package:example/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ecommerceTheme,
      home: const MainScreen(),
    );
  }
}
