import 'package:flutter/material.dart';
import 'package:market_curly_ui/screens/home/components/kurly_banner_item.dart';

class KurlyPage extends StatelessWidget {
  const KurlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          KurlyBannerItem(),
        ],
      ),
    );
  }
}
