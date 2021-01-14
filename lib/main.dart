import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_style/src/pages/basic_page.dart';
import 'package:flutter_style/src/pages/buttons_page.dart';
import 'package:flutter_style/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
    //    .copyWith(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Styles',
      initialRoute: "hard",
      routes: {
        "basic": (BuildContext context) => BasicPage(),
        "medium": (BuildContext context) => ScrollPage(),
        "hard": (BuildContext context) => ButtonsPage(),
      },
    );
  }
}
