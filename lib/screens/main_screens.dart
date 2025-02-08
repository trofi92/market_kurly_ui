import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_curly_ui/constants.dart';
import 'package:market_curly_ui/models/nav_item.dart';
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
  int _selectedIndex = 0;

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
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
        items: List.generate(
            navItems.length,
            (index) => _buildBottomNavigationBarItem(
                  icon: navItems[index].icon,
                  label: navItems[index].label,
                  isActive: navItems[index].id == _selectedIndex.toString()
                      ? true
                      : false,
                )),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

_buildBottomNavigationBarItem(
    {String? icon,
    String? label,
    bool isActive = false,
    GestureTapCallback? press}) {
  return BottomNavigationBarItem(
      icon: SizedBox(
          width: 38,
          height: 38,
          child: IconButton(
              onPressed: press,
              icon: SvgPicture.asset(
                icon ?? "assets/icons/star.svg",
                colorFilter: ColorFilter.mode(
                  isActive ? kPrimaryColor : Colors.black,
                  BlendMode.srcIn,
                ),
                width: 24,
                height: 24,
              ))),
      label: label);
}
