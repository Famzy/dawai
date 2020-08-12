import 'package:dawai/core/helpers/ui_helpers.dart';
import 'package:dawai/core/utils.dart';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: screenWidth(context),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: <Widget>[
            SpaceHelper.verticalSpaceMedium(),
            Image.asset(
              "assets/images/lady.png",
            ),
            SpaceHelper.verticalSpaceSmall(),
            CardHelper.titleCard(
                context: context,
                title: "Before Breakfast",
                imgPath: "assets/images/sun.png"),
            SpaceHelper.verticalSpaceSmall(),
            CardHelper.drugCard(
                imgPath: "assets/images/injection.png",
                drug: "Zoloft",
                grams: "50 mg",
                time: "7:00 AM"),
            SpaceHelper.verticalSpaceSmall(),
            CardHelper.titleCard(
                width: 2.1,
                context: context,
                title: "After Breakfast",
                imgPath: "assets/images/sun.png"),
            SpaceHelper.verticalSpaceSmall(),
            CardHelper.drugCard(
                imgPath: "assets/images/drug.png",
                drug: "Ativan",
                grams: "20 mg",
                time: "7:00 AM"),
            SpaceHelper.verticalSpaceSmall(),
            CardHelper.drugCard(
                imgPath: "assets/images/third.png",
                drug: "Metoprolol",
                grams: "100 mg",
                scale: 10,
                time: "7:00 AM"),
            SpaceHelper.verticalSpaceLarge(),
          ],
        ),
      ),
    );
  }
}
