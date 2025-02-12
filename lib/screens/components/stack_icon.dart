import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_curly_ui/constants.dart';

class StackIcon extends StatelessWidget {
  final String? imagePath;
  final GestureTapCallback? onPressed;
  final String? counter;

  const StackIcon({super.key, this.imagePath, this.onPressed, this.counter});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            imagePath ?? "assets/icons/shopping-cart.svg",
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        Positioned(
          top: 10,
          right: 5,
          // ignore: sized_box_for_whitespace
          child: Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Center(
              child: Text(
                "$counter",
                style: TextStyle(fontSize: 10, color: kPrimaryColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
