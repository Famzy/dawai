import 'package:flutter/material.dart';

import '../utils.dart';

class ButtonHelpers {
  static Widget addButton() {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: primaryColorLight,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Icon(
        Icons.add,
        color: primaryColor,
      ),
    );
  }
}