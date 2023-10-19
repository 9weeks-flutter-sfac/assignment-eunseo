import 'package:flutter/material.dart';

clearTextField(List<TextEditingController> textFields) {
  textFields.map(
    (textField) => textField.clear(),
  );
}
