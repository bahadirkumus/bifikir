import 'package:flutter/material.dart';
import 'package:bi_fikir/Screens/WelcomePage/welcome_page_screen.dart';
import 'package:bi_fikir/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bi Fikir',
      theme: ThemeData(
        primaryColor: kPrimaryDarkColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
