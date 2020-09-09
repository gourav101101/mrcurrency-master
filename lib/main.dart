import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mr. Currency',
        theme: ThemeData(
          accentColor: Colors.black,
          //iconTheme: IconThemeData(color: Colors.white),
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
            displayColor: Colors.black,
          ),
        ),
        home: HomeScreen());
  }
}
