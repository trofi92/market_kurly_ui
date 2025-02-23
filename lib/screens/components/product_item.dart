import 'package:flutter/material.dart';
import 'package:market_curly_ui/models/product.dart';
import 'package:market_curly_ui/models/product_details_arguments.dart';
import 'package:market_curly_ui/screens/details/details_screen.dart';
import 'package:market_curly_ui/string_extensions.dart';
import 'package:market_curly_ui/theme.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool? lineChange;
  final double? textContainerHeight;

  const ProductItem({
    super.key,
    required this.product,
    this.lineChange,
    this.textContainerHeight = 80,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, DetailsScreen.routeName,
                  arguments: ProductDetailsArguments(product: product));
            },
            child: Image.asset(
              product.imagePath ?? 'assets/images/kurly_banner_0.jpg',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[200],
                  child: const Center(
                    child: Icon(
                      Icons.image_not_supported,
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          height: textContainerHeight,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 8),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: "${product.title} ${lineChange == true ? "\n" : ""}",
                    style: textTheme().bodyLarge),
                TextSpan(
                    text: " ${product.discount}% ",
                    style: textTheme().bodyMedium?.copyWith(
                          color: Colors.red,
                        )),
                discountPrice(
                  product.price ?? 0,
                  product.discount ?? 0,
                ),
                TextSpan(
                  text: "${product.price?.toString().numberFormat()}원",
                  style: textTheme()
                      .bodyMedium
                      ?.copyWith(decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  TextSpan discountPrice(int price, int discount) {
    double discountRate = ((100 - discount) / 100);
    int discountPrice = (price * discountRate).toInt();

    return TextSpan(
      text: "${discountPrice.toString().numberFormat()}원",
      style: textTheme().bodyMedium?.copyWith(
            color: Colors.red,
            fontWeight: FontWeight.w900,
          ),
    );
  }
}
