import 'package:flutter/material.dart';
import 'package:market_curly_ui/models/text_menu.dart';
import 'package:market_curly_ui/screens/components/text_menu_card.dart';
import 'package:market_curly_ui/screens/my_kurly/components/my_kurly_header.dart';

class MyKurlyBody extends StatelessWidget {
  const MyKurlyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyKurlyHeader(),
        buildPaddingTextMenuCard("비회원 주문 조회", () {}),
        SizedBox(
          height: 10,
          child: ListView.separated(
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return SizedBox(
                child: TextMenuCard(
                  title: textMenuList[index].text,
                  icon: textMenuList[index].icon,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 0,
              );
            },
            itemCount: textMenuList.length,
          ),
        ),
        buildPaddingTextMenuCard("컬리 소개", () {}),
      ],
    );
  }
}

Padding buildPaddingTextMenuCard(String text, GestureTapCallback press) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: SizedBox(
      height: 55,
      child: TextMenuCard(
          title: text,
          icon: 'assets/icons/right-arrow.svg',
          press: press,
          textColor: Colors.black),
    ),
  );
}
