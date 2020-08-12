import 'package:flutter/material.dart';

import '../utils.dart';

class BottomNav {
  static Widget nav() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              height: 58,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 3,
                    width: 50,
                    color: primaryColor,
                  ),
                  Expanded(
                      child: IconButton(
                    icon: Image.asset('assets/images/home.png'),
                    onPressed: () {},
                  )),
                  Text(
                    'Home',
                    style: TextStyle(color: primaryColor),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 58,
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: IconButton(
                    icon: Image.asset('assets/images/bell.png'),
                    onPressed: () {},
                  )),
                  Text(
                    'Reminder',
                    style: TextStyle(color: lightGray),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 58,
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: IconButton(
                    icon: Image.asset('assets/images/prescription.png'),
                    onPressed: () {},
                  )),
                  Text(
                    'Prescription',
                    style: TextStyle(color: lightGray),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 58,
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: IconButton(
                    icon: Image.asset('assets/images/man.png'),
                    onPressed: () {},
                  )),
                  Text(
                    'My Account',
                    style: TextStyle(color: lightGray),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
