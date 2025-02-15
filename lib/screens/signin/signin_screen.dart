import 'package:flutter/material.dart';
import 'package:market_curly_ui/screens/signin/components/kurly_sign_form.dart';
import 'package:market_curly_ui/theme.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign_in';

  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '로그인',
          style: textTheme().titleLarge?.copyWith(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(),
        ),
      ),
      body: KurlySignForm(),
    );
  }
}
