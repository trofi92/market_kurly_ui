import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_curly_ui/constants.dart';
import 'package:market_curly_ui/screens/main_screens.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash_screen';

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  'Market Kurly',
                  style: GoogleFonts.pacifico(
                    fontSize: 28.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: TextButton(
                  child: Text('Countinue'),
                  onPressed: () {
                    _completeSplash(context, MainScreens());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => widget));
}
