import 'package:flutter/material.dart';
import 'package:market_curly_ui/screens/details/details_screen.dart';
import 'package:market_curly_ui/screens/signin/signin_screen.dart';
import 'screens/main_screens.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreens.routeName: (context) => MainScreens(),
  SignInScreen.routeName: (context) => SignInScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
