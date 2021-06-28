import 'package:flutter/material.dart';
import 'package:frontend/resources/colorPalette.dart';
import 'package:frontend/widgets/promotions.dart';
import 'package:frontend/widgets/userInfo.dart';
import 'package:frontend/widgets/searchbar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 8.0),
                      getSearchBarUI(context),
                      const SizedBox(height: 16.0),
                      Flexible(
                        child: getPromotionUI(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}