import 'package:flutter/material.dart';

/// Custom drop down atom that receives [categoryList] and [onCategorySelected] as parameters.
class CustomDropDownMenuAtom extends StatelessWidget {
  final List<String> categoryList;
  final Function(String) onCategorySelected;
  const CustomDropDownMenuAtom(
      {super.key,
      required this.categoryList,
      required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownMenu(
          dropdownMenuEntries: categoryList.map<DropdownMenuEntry<String>>(
            (value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            },
          ).toList(),
          initialSelection: categoryList.first,
          onSelected: (value) => onCategorySelected.call(value!)),
    );
  }
}
