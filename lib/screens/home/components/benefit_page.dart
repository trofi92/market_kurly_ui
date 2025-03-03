import 'package:flutter/material.dart';
import 'package:market_curly_ui/models/benefit_banner.dart';
import 'package:market_curly_ui/theme.dart';

class BenefitPage extends StatefulWidget {
  const BenefitPage({super.key});

  @override
  State<BenefitPage> createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {
  Future _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        itemBuilder: (context, index) {
          Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                padding: const EdgeInsets.only(left: 22),
                color: Color(0xeff4e4da * (index + 1)),
                height: 140,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          // const Spacer(),
                          Text(
                            "${benefitBanners[index].title}",
                            style: textTheme().bodyMedium,
                          ),
                          Text(
                            "${benefitBanners[index].benefit}",
                            style: textTheme()
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        benefitBanners[index].image,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 22),
                    ]),
              ));
          return null;
        },
        itemCount: benefitBanners.length,
      ),
    );
  }
}
