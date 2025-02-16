import 'package:flutter/material.dart';

class NumberIndicator extends StatelessWidget {
  final int currentPage;
  final int length;
  final double width;
  final double height;

  const NumberIndicator({
    super.key,
    required this.currentPage,
    required this.length,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(26),
        borderRadius: BorderRadius.circular(21),
      ),
      child: Center(
        child: Text(
          "$currentPage / $length",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
