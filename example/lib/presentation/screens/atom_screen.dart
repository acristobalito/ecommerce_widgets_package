import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:example/presentation/widgets/containers/atoms_list_widget.dart';
import 'package:flutter/material.dart';

class AtomScreen extends StatelessWidget {
  const AtomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: FoundationColors.primaryColor,
        title: const Text(
          'Átomos',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: FoundationTypo.font,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: const AtomsListWidget(),
    );
  }
}
