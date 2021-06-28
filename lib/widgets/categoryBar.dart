import 'package:flutter/material.dart';
import 'package:frontend/resources/colorPalette.dart';

class CategoryBar extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CategoryBar();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: const Text(
            'Categories', 
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
              fontSize: 22,
              color: AppTheme.pink,
            ),
          ),
        ),
        SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  height: MediaQuery.of(context).size.width*0.3 - 50,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade400, 
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Most\nFavorites",
                          style: TextStyle(
                            fontSize: 18, 
                            color: Colors.white, 
                            fontWeight: FontWeight.bold),
                        ),
                        /*SizedBox(
                          height: 10,
                        ),
                        Text(
                          "20 Items",
                          style: TextStyle(
                            fontSize: 12, color: Colors.white),
                        ),*/
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: MediaQuery.of(context).size.width*0.3 - 50,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(color: Colors.blue.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Newest",
                            style: TextStyle(
                              fontSize: 18, 
                              color: Colors.white, 
                              fontWeight: FontWeight.bold),
                          ),
                          /*SizedBox(
                            height: 10,
                          ),
                          Text(
                            "20 Items",
                            style: TextStyle(
                              fontSize: 12, color: Colors.white),
                          ),*/
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: MediaQuery.of(context).size.width*0.3 - 50,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(color: Colors.lightBlueAccent.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Super\nSaving",
                          style: TextStyle(
                            fontSize: 18, 
                            color: Colors.white, 
                            fontWeight: FontWeight.bold),
                        ),
                        /*SizedBox(
                          height: 10,
                        ),
                        Text(
                          "20 Items",
                          style: TextStyle(
                            fontSize: 12, color: Colors.white),
                        ),*/
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}