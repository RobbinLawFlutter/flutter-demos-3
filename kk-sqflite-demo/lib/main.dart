//https://flutter.dev/docs/cookbook/persistence/sqlite

import 'package:flutter/material.dart';

import 'package:sqflight_demo/screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Color themeColor = Color(0xFF808366);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        brightness: Brightness.light,
        accentColor: Colors.black,
        primaryColor: themeColor,
        primaryTextTheme: TextTheme(),
        scaffoldBackgroundColor: themeColor,
        cursorColor: Colors.black,
        dialogTheme: DialogTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: themeColor,
            fontSize: 25,
          ),
        ),
        //inputDecorationTheme applies to TextField Widget.
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: themeColor,
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        indicatorColor: Colors.black,
        textTheme: TextTheme(
          //subtitle1 is for ListTile text color,
          //and the TextField edited text color.
          subtitle1: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(themeColor),
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  fontSize: 20,
                ),
              )),
        ),
      ),
      home: MyHomePage(),
    );
  }
}
