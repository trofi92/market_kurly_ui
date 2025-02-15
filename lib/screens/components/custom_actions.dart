import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_curly_ui/screens/components/stack_icon.dart';

class CustomActions extends StatelessWidget {
  const CustomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: Row(
        children: [
          SizedBox(
            width: 38,
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/pin.svg",
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                )),
          ),
          SizedBox(
            width: 38,
            child: StackIcon(
              imagePath: "assets/icons/shopping-cart.svg",
              counter: "2",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
