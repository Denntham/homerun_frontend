import 'package:flutter/material.dart';
import 'package:frontend/resources/colorPalette.dart';
import 'package:frontend/resources/promotionLists.dart';

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
                      SizedBox(height: 8.0),
                      getSearchBarUI(),
                      SizedBox(height: 16.0),
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

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'welcome, ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.3,
                    color: AppTheme.grey,
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
                    color: AppTheme.grey,
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
    );
  }

  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18.0, right: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 36,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.lightgrey,
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox( width: 60, height: 60,
                      child: Icon(Icons.search, color: AppTheme.pink),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextFormField(
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppTheme.grey,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Search for services ...',
                            border: InputBorder.none,
                            helperStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: AppTheme.grey,
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: AppTheme.grey,
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded( child: SizedBox(), ),
        ],
      ),
    );
  }

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
            child: PopularCourseListView()
              /*callBack: () {
                moveTo();
              },
            ),*/
          )
        ],
      ),
    );
  }
}