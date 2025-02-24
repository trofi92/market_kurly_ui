import 'package:flutter/material.dart';
import 'package:market_curly_ui/constants.dart';
import 'package:market_curly_ui/models/product_details_arguments.dart';
import 'package:market_curly_ui/screens/components/default_button.dart';
import 'package:market_curly_ui/screens/details/components/body.dart';
import 'package:market_curly_ui/theme.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'title',
          style: textTheme().titleSmall?.copyWith(color: Colors.black),
        ),
      ),
      body: Body(
        product: arguments.product,
      ),
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DefaultButton(
                text: "구매하기",
                color: kPrimaryColor,
                press: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
