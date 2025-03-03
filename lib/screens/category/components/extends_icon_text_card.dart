import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_curly_ui/models/list_category_menu.dart';

class ExtendsIconTextCard extends StatefulWidget {
  final ListCategoryMenu item;

  const ExtendsIconTextCard({super.key, required this.item});

  @override
  // ignore: no_logic_in_create_state
  State<ExtendsIconTextCard> createState() => _ExtendsIconTextCardState(item);
}

class _ExtendsIconTextCardState extends State<ExtendsIconTextCard> {
  _ExtendsIconTextCardState(this.item);
  final ListCategoryMenu item;
  bool isShow = false;

  void toggle() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 8),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(item.icon),
                ),
                const SizedBox(width: 15),
                Text(item.title),
                const Spacer(),
                SizedBox(
                  width: 30,
                  child: IconButton(
                    onPressed: () => toggle(),
                    icon: SvgPicture.asset(
                      "assets/icons/down-arrow.svg",
                      colorFilter: ColorFilter.mode(
                        Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            curve: Curves.fastOutSlowIn,
            height: isShow ? 100 : 0,
            decoration: BoxDecoration(color: Colors.blue[200]),
            child: Center(child: Text(item.title)),
          ),
        ],
      ),
    );
  }
}
