import 'package:flutter/material.dart';
import 'package:market_curly_ui/constants.dart';
import 'package:market_curly_ui/models/product.dart';
import 'package:market_curly_ui/string_extensions.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          height: 500,
          child: Image.asset(
            product.imagePath ?? 'assets/images/kurly_banner_0.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                product.title ?? '',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text("상세보기 화면 입니다.",
                  style: TextStyle(fontSize: 16, color: kTextColor)),
              const SizedBox(height: 16),
              Text(
                "${product.price.toString().numberFormat()}원",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "로그인 후, 적립 혜택이 제공됩니다.",
                style: TextStyle(fontSize: 16, color: kPrimaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
