import 'package:flutter/material.dart';
import 'package:frontend/pages/dashboard.dart';
import 'package:frontend/pages/marketplace.dart';
import 'package:frontend/resources/colorPalette.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  
  int _currentIndex = 0;
  final List _screens = [
    Dashboard(),
    Marketplace(),
    Scaffold(),
    Scaffold()
  ];  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppTheme.white,
        selectedItemColor: AppTheme.white,
        unselectedItemColor: AppTheme.darkBlue,
        elevation: 0.0,
        items: [Icons.dashboard, Icons.store, Icons.chat, Icons.account_circle]
            .asMap().map((key, value) => MapEntry(key, 
          BottomNavigationBarItem(
            title: Text(''),
            icon: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: _currentIndex == key ? AppTheme.skyBlue : Colors.transparent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Icon(value),
            )
          ),
        ), ).values.toList(),
      ),
    );
  }
}