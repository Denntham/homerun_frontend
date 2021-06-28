import 'package:flutter/material.dart';
import 'package:frontend/resources/colorPalette.dart';
import 'package:frontend/resources/promotionLists.dart';

Widget getPromotionUI() {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Popular Promotions',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: AppTheme.grey,
          ),
        ),
        Flexible(
          child: PromotionList()
            /*callBack: () {
              moveTo();
            },
          ),*/
        )
      ],
    ),
  );

  /*void moveTo() {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => CourseInfoScreen(),
      ),
    );
  }*/
}