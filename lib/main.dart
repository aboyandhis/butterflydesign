import 'package:butterfly_dart/providers/index.dart';
import 'package:butterfly_dart/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';




final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (BuildContext context) => AppData()),
    ChangeNotifierProvider(create: (BuildContext context) => ThemeProvider()),
  ];


void main() {
   runApp(MultiProvider(providers: providers, builder: (BuildContext context, widget) => MyApp()));
}

    

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer2<AppData, ThemeProvider>(
      builder: (BuildContext context,AppData app,ThemeProvider theme, _) => MaterialApp(
          darkTheme: theme.theme,
          themeMode: theme.themeMode, theme: theme.theme,
          debugShowCheckedModeBanner: false,
          title: 'Butterfly Design',
          routes: {Home.routeName: (BuildContext context) => Home()})
    );
  }
}
