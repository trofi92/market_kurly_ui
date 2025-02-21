import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_curly_ui/models/product.dart';
import 'package:market_curly_ui/screens/components/product_item.dart';
import 'package:market_curly_ui/screens/home/components/circle_container.dart';
import 'package:market_curly_ui/screens/home/components/product_filter_button.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverRefreshControl(
            onRefresh: () async {
              await Future<void>.delayed(const Duration(seconds: 1));
            },
          ),
          SliverAppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              SizedBox(
                width: 100,
                child: ProductFilterButton(),
              )
            ],
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 200.0,
              crossAxisSpacing: 30.0,
              childAspectRatio: 1.5,
              crossAxisCount: productList.length,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index],
                    ),
                    Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(
                          iconPath: "assets/icons/shopping-cart.svg"),
                    ),
                  ],
                );
              },
              childCount: productList.length,
            ),
          )
        ],
      ),
    );
  }
}
