import 'package:butterfly_dart/common/hero.dart';
import 'package:butterfly_dart/common/index.dart';
import 'package:flutter/material.dart';
 
class Home extends StatelessWidget {
  static final String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        drawer: MyDrawer(),
        body: HeroSection(
          welceomeText: "Digital Brand Management",
          ctaText: "Book <Meeting>"
        ));
  }
}
