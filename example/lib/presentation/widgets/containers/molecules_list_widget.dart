import 'package:ecommerce_widgets_package/domain/model/cart_model.dart';
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:example/presentation/widgets/sections/molecules/cart_icon_molecule_section_widget.dart';
import 'package:example/presentation/widgets/sections/molecules/cart_item_molecule_section_widget.dart';
import 'package:example/presentation/widgets/sections/sections.dart';
import 'package:flutter/material.dart';

class MoleculesListWidget extends StatelessWidget {
  const MoleculesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextAtom(
                text: 'NAVEGACIÓN',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              const NavigationMoleculeSectionWidget(),
              const SizedBox(
                height: 10,
              ),
              const CustomTextAtom(
                text: 'ICONO DE CARRITO',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              const CartIconMoleculeSectionWidget(),
              const SizedBox(
                height: 10,
              ),
              const CustomTextAtom(
                text: 'ITEMS DEL CARRITO',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              CartItemMoleculeSectionWidget(
                cartProduct: CartModel(
                    id: 1,
                    image:
                        'https://www.libreriahuequito.com/public/images/productos/default.png',
                    nameProduct: 'Producto',
                    price: 100.0,
                    quantity: 1),
                onAddQuantity: () {},
                onSubstractQuantity: () {},
                onRemove: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextAtom(
                text: 'FORMULARIO',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              const ItemFormMoleculeSectionWidget(),
              const SizedBox(
                height: 10,
              ),
              const CustomTextAtom(
                text: 'TARJETAS',
                style: TextStyle(
                    color: FoundationColors.txtSecondaryColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              const CardMoleculeSectionWidget()
            ],
          ),
        ),
      ),
    );
  }
}
