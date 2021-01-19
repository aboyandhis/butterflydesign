import 'package:butterfly_dart/common/appbar.dart';
import 'package:butterfly_dart/common/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  static final String routeName = "/";
 


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: Container(),
    );
  }
}

