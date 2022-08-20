import 'package:exercises/pages/home_page.dart';
import 'package:exercises/pages/signIn_page.dart';
import 'package:exercises/pages/signUp_page.dart';
import 'package:exercises/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: SplashPage(),
      routes: {
        HomePage.id: (context)=> HomePage(),
        SplashPage.id: (context)=> SplashPage(),
        SignInPage.id: (context)=> SignInPage(),
        SignUpPage.id: (context)=>SignUpPage()
      },
    );
  }
}
