import 'package:flutter/material.dart';
import 'package:market_curly_ui/screens/components/custom_actions.dart';
import 'package:market_curly_ui/screens/my_kurly/components/my_kurly_body.dart';

class MyKurlyScreen extends StatelessWidget {
  const MyKurlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        appBar: AppBar(
          title: Text(
            "마이컬리",
            style: TextStyle(color: Colors.black),
          ),
          automaticallyImplyLeading: false,
          actions: [
            CustomActions(),
          ],
        ),
        body: SingleChildScrollView(
          child: MyKurlyBody(),
        ));
  }
}
