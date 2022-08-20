import 'dart:async';

import 'package:exercises/pages/home_page.dart';
import 'package:exercises/pages/signIn_page.dart';
import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static final String id = "splash_page";
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var isSignIn = false;
  void inTimer(){
    Timer(Duration(seconds: 3),(){
      if(isSignIn){
        Navigator.pushReplacementNamed(context, HomePage.id);
      }else{
        Navigator.pushReplacementNamed(context, SignInPage.id);
      }

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
          child: Stack(
            children: [
              Center(
                child: Image.asset('assets/imagees/img.png',
                  height: 80,width: 80,),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Text('From Amazon',
                        style: TextStyle(
                          fontSize: 15
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
