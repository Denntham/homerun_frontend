import 'package:flutter/material.dart';
import 'package:frontend/resources/colorPalette.dart';

Widget getTopBar() {
  return SizedBox(
    height: AppBar().preferredSize.height,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,      
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text( 'HomeRun',
              style: TextStyle(
                fontSize: 22,
                color: AppTheme.pink,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    ), 
  );
}