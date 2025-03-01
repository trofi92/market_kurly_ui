import 'package:flutter/material.dart';
import 'package:market_curly_ui/constants.dart';
import 'package:market_curly_ui/screens/components/custom_actions.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("검색"),
        actions: [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: ListView(children: [
        //
        //DefaultSearchField
        const SizedBox(height: 20),
        Text("인기 검색어", style: TextStyle(color: kTextColor))
        //
        // ListView.seaprated
      ]),
    );
  }
}
