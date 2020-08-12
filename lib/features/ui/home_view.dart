import 'package:dawai/core/utils.dart';
import 'package:dawai/features/ui/image_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: BottomNav.nav(),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              width: screenWidth(context),
              height: screenHeight(context) - screenHeight(context) / 1.6,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/header_overlay.png'),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SpaceHelper.verticalSpaceMedium(),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        color: white,
                      ),
                      SpaceHelper.horizontalSpace(screenWidth(context) / 4),
                      Text(
                        "My Reminders",
                        style: pageTitle,
                      ),
                    ],
                  ),
                  SpaceHelper.verticalSpace(screenHeight(context) / 20),
                  Row(
                    children: <Widget>[
                      CardHelper.dateCard(
                          context: context,
                          date: "8",
                          day: "Mon",
                          cardColor: white),
                      SpaceHelper.horizontalSpaceSmall(),
                      CardHelper.dateCard(
                          context: context,
                          date: "9",
                          day: "Tue",
                          cardColor: primaryColorLight,
                          style: dateTextBold),
                      SpaceHelper.horizontalSpaceSmall(),
                      CardHelper.dateCard(
                          date: "10",
                          day: "Wed",
                          cardColor: white,
                          context: context),
                      SpaceHelper.horizontalSpaceSmall(),
                      CardHelper.dateCard(
                          date: "11",
                          day: "Thu",
                          cardColor: white,
                          context: context),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SpaceHelper.verticalSpaceSmall(),
            Container(
              width: screenWidth(context),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: <Widget>[
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
                  SpaceHelper.verticalSpaceMedium(),
                  Center(
                    child: Column(
                      children: <Widget>[
                        ButtonHelpers.addButton(
                            onTap: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration:
                                        const Duration(milliseconds: 350),
                                    pageBuilder: (context, _, __) =>
                                        ImageView()))),
                        SpaceHelper.verticalSpace(5),
                        Text(
                          "Add Medication",
                          style: timeText,
                        )
                      ],
                    ),
                  ),
                  SpaceHelper.verticalSpaceMedium(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
