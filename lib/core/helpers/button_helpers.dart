import 'package:flutter/material.dart';

import '../utils.dart';

class ButtonHelpers {
  static Widget addButton({Function onTap}) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: primaryColorLight,
        borderRadius: BorderRadius.circular(9),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.add,
          color: primaryColor,
        ),
      ),
    );
  }

  static Widget smallBtn({
    BuildContext context,
    String name,
    Color color,
    TextStyle style,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      width: screenWidth(context) / 2,
      decoration: BoxDecoration(
          color: color,
          border: Border(
            top: BorderSide(width: 2, color: secondaryColor),
            bottom: BorderSide(width: 2, color: secondaryColor),
            left: BorderSide(width: 2, color: secondaryColor),
            right: BorderSide(width: 2, color: secondaryColor),
          ),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          name,
          style: style,
        ),
      ),
    );
  }

  static Widget largeBtn({
    BuildContext context,
    String name,
    Color color,
    TextStyle style,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      width: screenWidth(context),
      decoration: BoxDecoration(
          color: color,
          border: Border(
            top: BorderSide(width: 2, color: secondaryColor),
            bottom: BorderSide(width: 2, color: secondaryColor),
            left: BorderSide(width: 2, color: secondaryColor),
            right: BorderSide(width: 2, color: secondaryColor),
          ),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          name,
          style: style,
        ),
      ),
    );
  }
}
