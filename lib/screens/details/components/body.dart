import 'package:flutter/material.dart';
import 'package:market_curly_ui/models/product.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Center(
        child: Text(product.title ?? ''),
      ),
    );
  }
}
