import 'package:ecommerce_widgets_package/foundations/foundation_typo.dart';
import 'package:ecommerce_widgets_package/presentation/widgets/atoms/custom_text_atom.dart';
import 'package:flutter/material.dart';

/// Custom drop down atom that receives [categoryList] and [onCategorySelected] as parameters.
class CustomDropDownMenuAtom extends StatelessWidget {
  final List<String> categoryList;
  final Function(String) onCategorySelected;
  final bool isEnable;
  const CustomDropDownMenuAtom(
      {super.key,
      required this.categoryList,
      required this.onCategorySelected,
      required this.isEnable});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomTextAtom(
            text: 'Categoria:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          DropdownMenu(
              enabled: isEnable,
              width: 250,
              textStyle: const TextStyle(
                  fontFamily: FoundationTypo.font, fontSize: 15),
              inputDecorationTheme: InputDecorationTheme(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.grey[200]!, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.grey[200]!, width: 2),
                  ),
                  fillColor: Colors.grey[200],
                  filled: true),
              dropdownMenuEntries: categoryList.map<DropdownMenuEntry<String>>(
                (value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                },
              ).toList(),
              initialSelection: categoryList.first,
              onSelected: (value) => onCategorySelected.call(value!)),
        ],
      ),
    );
  }
}
