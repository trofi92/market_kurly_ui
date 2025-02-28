import 'package:flutter/material.dart';
import 'package:market_curly_ui/constants.dart';
import 'package:market_curly_ui/models/grid_category_menu.dart';
import 'package:market_curly_ui/models/list_category_menu.dart';
import 'package:market_curly_ui/screens/category/components/extends_icon_text_card.dart';
import 'package:market_curly_ui/screens/category/components/image_text_card.dart';
import 'package:market_curly_ui/screens/components/custom_actions.dart';
import 'package:market_curly_ui/screens/components/text_menu_card.dart';
import 'package:market_curly_ui/theme.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
        actions: [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 55,
              child: TextMenuCard(
                title: '자주 사는 상품',
                icon: "assets/icons/right-arrow.svg",
                textColor: kPrimaryColor,
                iconColor: kPrimaryColor,
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) =>
                  ExtendsIconTextCard(item: listCategoryMenuList[index]),
              childCount: listCategoryMenuList.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                "컬리의 추천",
                style: textTheme().headlineMedium,
              ),
            ),
          ),
          //SilverGrid
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    ImageTextCard(item: gridCategoryMenu[index]),
                childCount: gridCategoryMenu.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
