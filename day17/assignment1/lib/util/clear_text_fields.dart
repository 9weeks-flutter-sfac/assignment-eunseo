import 'package:flutter/material.dart';

clearTextField(List<TextEditingController> textFields) {
  for (var textField in textFields) {
    textField.clear();
  }
}
