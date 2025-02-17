import 'package:flutter/material.dart';
import 'package:market_curly_ui/models/home_banner.dart';
import 'package:market_curly_ui/screens/home/components/box_border_text.dart';
import 'package:market_curly_ui/screens/home/components/number_indicator.dart';

class KurlyBannerItem extends StatefulWidget {
  const KurlyBannerItem({super.key});

  @override
  State<KurlyBannerItem> createState() => _KurlyBannerItemState();
}

class _KurlyBannerItemState extends State<KurlyBannerItem> {
  final List<HomeBanner> list = homeBannerList;
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          child: PageView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(list[index].bannerImage),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 16,
                    child: BoxBorderText(
                      title: list[index].eventTitle,
                      subTitle: list[index].eventContent,
                    ),
                  ),
                ],
              );
            },
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: NumberIndicator(
            currentPage: currentPage + 1,
            length: list.length,
          ),
        )
      ],
    );
  }
}
