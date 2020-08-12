import 'package:dawai/core/helpers/button_helpers.dart';
import 'package:dawai/core/helpers/ui_helpers.dart';
import 'package:dawai/core/theme/font_styles.dart';
import 'package:dawai/core/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardHelper {
  static Widget dateCard(
      {Color cardColor,
      String date,
      String day,
      TextStyle style,
      BuildContext context}) {
    return Container(
      height: 73,
      width: screenWidth(context) / 5.5,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            date,
            style: style == null ? dateText : style,
          ),
          Text(
            day,
            style: dayText,
          ),
        ],
      ),
    );
  }

  static Widget titleCard({
    String title,
    String imgPath,
    BuildContext context,
  }) {
    return Row(
      children: <Widget>[
        Image.asset(
          imgPath,
          scale: 4.0,
        ),
        SpaceHelper.horizontalSpace(10),
        Text(
          title,
          style: categoryTitle,
        ),
        SpaceHelper.horizontalSpace(screenWidth(context) / 2.2),
        ButtonHelpers.addButton(),
      ],
    );
  }

  static Widget drugCard(
      {String svgPath,
      String grams,
      String,
      drug,
      String time,
      String imgPath}) {
    return Container(
      height: 83,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(8),
        border: Border(
          top: BorderSide(width: 2, color: primaryColorLight),
          bottom: BorderSide(width: 2, color: primaryColorLight),
          left: BorderSide(width: 2, color: primaryColorLight),
          right: BorderSide(width: 2, color: primaryColorLight),
        ),
        boxShadow: [
          BoxShadow(
              color: primaryColorLight,
              offset: Offset(0, 17),
              blurRadius: 23,
              spreadRadius: -17),
        ],
      ),
      child: Row(
        children: <Widget>[
          imgPath == null
              ? SvgPicture.asset(
                  svgPath,
                )
              : Image.asset(
                  imgPath,
                  scale: 4,
                ),
          SpaceHelper.horizontalSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(drug, style: drugName),
                  SpaceHelper.horizontalSpace(5),
                  Text(
                    grams,
                    style: drugGrams,
                  ),
                ],
              ),
              SpaceHelper.verticalSpace(8),
              Text(
                time,
                style: timeText,
              )
            ],
          )
        ],
      ),
    );
  }
}
