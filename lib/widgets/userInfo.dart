import 'package:flutter/material.dart';
import 'package:frontend/resources/colorPalette.dart';

Widget getAppBarUI() {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.pink,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text( 'Welcome, ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      letterSpacing: 0.3,
                      color: AppTheme.white,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'User',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      letterSpacing: 0.2,
                      color: AppTheme.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              child: Image.asset('assets/images/userImage.png'),
            )
          ],
        ),
      ),
    );
  }