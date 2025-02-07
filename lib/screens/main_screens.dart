import 'package:flutter/material.dart';
import 'package:market_curly_ui/screens/category/category_screen.dart';
import 'package:market_curly_ui/screens/home/home_screen.dart';
import 'package:market_curly_ui/screens/my_kurly/my_kurly_screen.dart';
import 'package:market_curly_ui/screens/recommand/recommend_screen.dart';

class MainScreens extends StatefulWidget {
  static const String routeName = '/main_screen';

  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
      index: _selectedIndex,
      children: [
        HomeScreen(),
        RecommendScreen(),
        CategoryScreen(),
        MyKurlyScreen(),
      ],
    ));
  }
}
