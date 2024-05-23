import 'package:flutter/material.dart';

extension StringExtension on String {
  bool isValid(TextInputType? inputType) {
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return (inputType == TextInputType.emailAddress)
        ? regex.hasMatch(this)
        : true;
  }
}
