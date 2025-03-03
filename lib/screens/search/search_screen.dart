import 'package:flutter/material.dart';
import 'package:market_curly_ui/constants.dart';
import 'package:market_curly_ui/screens/components/custom_actions.dart';
import 'package:market_curly_ui/screens/search/components/default_search_field.dart';

class SearchScreen extends StatelessWidget {
  static final List<String> searchKeywordList = [
    "불고기",
    "닭갈비",
    "삼겹살",
    "갈비곰탕",
    "치즈 피자",
    "생새우살",
  ];

  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("검색", style: TextStyle(color: Colors.white)),
        actions: [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DefaultSearchField(),
            SizedBox(height: 20),
            Text("인기 검색어", style: TextStyle(color: kTextColor)),
            SizedBox(
              height: 400,
              child: ListView.separated(
                itemBuilder: (context, index) => SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      searchKeywordList[index],
                      style: TextStyle(
                        fontSize: 16,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => Divider(
                  height: 0,
                  thickness: 0,
                ),
                itemCount: searchKeywordList.length,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
