import 'package:flutter/material.dart';
import 'package:market_curly_ui/screens/components/default_button.dart';

class MyKurlyHeader extends StatelessWidget {
  const MyKurlyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
          color: Colors.white,
          child: SizedBox(
              height: 250,
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Spacer(),
                    SizedBox(
                      width: 250,
                      child: Text("회원가입하고 \n 다양한 혜택을 받아보세요!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '가입 혜택 보기 > ',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: DefaultButton(
                        text: '로그인 / 회원가입',
                        press: () {},
                      ),
                    ),
                    Spacer(),
                  ]))),
    );
  }
}
