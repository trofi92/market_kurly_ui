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
          child: list.isEmpty
              ? const Center(
                  child: Text('표시할 배너가 없습니다.'),
                )
              : PageView.builder(
                  itemCount: null,
                  controller: PageController(
                    initialPage: 0,
                  ),
                  itemBuilder: (context, index) {
                    final adjustedIndex = index % list.length;
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage(list[adjustedIndex].bannerImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 16,
                          child: BoxBorderText(
                            title: list[adjustedIndex].eventTitle,
                            subTitle: list[adjustedIndex].eventContent,
                          ),
                        ),
                      ],
                    );
                  },
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value % list.length;
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
