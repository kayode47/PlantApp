import 'package:flutter/material.dart';
import 'package:plantapp/login.dart';
import 'package:plantapp/screens/onboard/onboard_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
       initialRoute: '/',
      routes: {'/mainPage': (context) => MyLoginPage()},
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnboardScreenPage(),
    );
  }
}


      

