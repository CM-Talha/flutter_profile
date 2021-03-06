import 'package:example/LoginPage.dart';
import 'package:example/Register.dart';
import 'package:example/user_profile.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: 
      {'Login' :(context)=>Login(),
      'Profile':(context)=>Profile(),
      'Register':(context)=>Register(),},
      themeMode: ThemeMode.dark,
       home: Login(),
    );
  }
}