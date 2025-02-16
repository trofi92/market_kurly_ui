import 'package:flutter/material.dart';
import 'package:market_curly_ui/constants.dart';
import 'package:market_curly_ui/screens/components/custom_actions.dart';
import 'package:market_curly_ui/screens/home/components/benefit_page.dart';
import 'package:market_curly_ui/screens/home/components/kurly_page.dart';
import 'package:market_curly_ui/screens/home/components/new_product.dart';
import 'package:market_curly_ui/screens/home/components/thrifty_shopping_page.dart';
import 'package:market_curly_ui/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "컬리추천",
      "신상품",
      "금주혜택",
      "알뜰쇼핑",
    ];
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Kurly"),
          actions: [
            CustomActions(),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(42),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.3,
                    color: Colors.grey,
                  ),
                ),
                color: Colors.white,
              ),
              child: TabBar(
                tabs: categories.map((e) => Tab(text: e)).toList(),
                labelColor: kPrimaryColor,
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().titleSmall?.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 2,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            KurlyPage(),
            NewProductPage(),
            BenefitPage(),
            ThriftyShoppingPage(),
          ],
        ),
      ),
    );
  }
}
