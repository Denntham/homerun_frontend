import 'package:flutter/material.dart';
import 'package:frontend/resources/colorPalette.dart';

Widget getSearchBarUI(BuildContext context) {
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
                  color: AppTheme.white,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: AppTheme.grey),
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
                            hintText: 'Search for services ...',
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