import 'package:flutter/material.dart';
import 'package:market_curly_ui/models/product.dart';
import 'package:market_curly_ui/screens/components/product_item.dart';
import 'package:market_curly_ui/screens/home/components/kurly_banner_item.dart';
import 'package:market_curly_ui/theme.dart';

class KurlyPage extends StatelessWidget {
  const KurlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 355,
            child: KurlyBannerItem(),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Text("이 상품 어때요?", style: textTheme().headlineLarge),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 200,
                  child: ProductItem(product: productList[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
