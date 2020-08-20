import 'package:flutter/material.dart';

class InputHelper {
  static Widget inputFiled({
    String hint,
    Icon icon,
    TextInputType keyboard,
  }) {
    return TextField(
      keyboardType: keyboard,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: icon,
      ),
    );
  }
}
