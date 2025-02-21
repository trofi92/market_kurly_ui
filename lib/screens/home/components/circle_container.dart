import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_curly_ui/constants.dart';

class CircleContainer extends StatelessWidget {
  final String? iconPath;

  const CircleContainer({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.5),
        color: kPrimaryColor.withAlpha(170),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SvgPicture.asset(
          iconPath ?? "assets/icons/star.svg",
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
