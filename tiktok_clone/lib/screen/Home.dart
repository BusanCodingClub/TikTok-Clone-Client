import 'package:flutter/material.dart';
import 'package:tiktok_clone/widget/vertical_carousel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: VerticalCarousel()
      ),
    );
  }
}