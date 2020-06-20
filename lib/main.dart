import 'package:flutter/material.dart';
import './screens/SelectCategory/selectCategory.dart';
import './theme/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: HeaderColor,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: AppBarTextStyle,
          ),
        ),
        textTheme: TextTheme(
          bodyText1: Body1TextStyle,
        ),
      ),
      home: SelectCategory(),
    );
  }
}
