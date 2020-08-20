import 'package:dawai/core/utils.dart';
import 'package:flutter/material.dart';

class ThirdUI extends StatelessWidget {
  @override
  Widget build(BuildContext ourContext) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: BottomNav.nav(),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: screenWidth(ourContext),
            height: screenHeight(ourContext) - screenHeight(ourContext) / 1.6,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            decoration: BoxDecoration(color: primaryColor),
            child: Column(
              children: <Widget>[
                SpaceHelper.verticalSpaceMedium(),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      color: white,
                    ),
                    SpaceHelper.horizontalSpace(screenWidth(ourContext) / 4),
                    Text(
                      "My Profile",
                      style: pageTitle,
                    ),
                  ],
                ),
                SpaceHelper.verticalSpace(screenHeight(ourContext) / 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.check_circle,
                            color: white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Amit Shigh",
                                style: nameText,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Noda",
                                style: cityName,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ClipOval(
                      child: Container(
                        color: white,
                        height: 80,
                        width: 80,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SpaceHelper.verticalSpaceSmall(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SpaceHelper.verticalSpaceMedium(),
                InputHelper.inputFiled(
                    hint: "Full Name",
                    icon: Icon(
                      Icons.person_outline,
                    )),
                SpaceHelper.verticalSpaceSmall(),
                InputHelper.inputFiled(
                    hint: "Email",
                    icon: Icon(Icons.email),
                    keyboard: TextInputType.emailAddress),
                SpaceHelper.verticalSpaceSmall(),
                InputHelper.inputFiled(
                    hint: "Phone",
                    icon: Icon(Icons.phone),
                    keyboard: TextInputType.phone),
                SpaceHelper.verticalSpaceSmall(),
                InputHelper.inputFiled(
                    hint: "Date of Birth",
                    icon: Icon(Icons.calendar_today),
                    keyboard: TextInputType.datetime),
                SpaceHelper.verticalSpaceSmall(),
                Text("Gender"),
                SpaceHelper.verticalSpaceSmall(),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ButtonHelpers.smallBtn(
                          context: ourContext,
                          color: secondaryColor,
                          style: nameText,
                          name: "Male"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: ButtonHelpers.smallBtn(
                          context: ourContext,
                          color: white,
                          name: "Female",
                          style: nameTextBlue),
                    ),
                  ],
                ),
                SpaceHelper.verticalSpaceSmall(),
                Row(
                  children: <Widget>[
                    Text("Address"),
                    SizedBox(
                      width: 5,
                    ),
                    ButtonHelpers.addButton(),
                  ],
                ),
                SpaceHelper.verticalSpaceMedium(),
                ButtonHelpers.largeBtn(
                    color: secondaryColor,
                    context: ourContext,
                    name: "SAVE",
                    style: nameText),
                SpaceHelper.verticalSpaceLarge(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
