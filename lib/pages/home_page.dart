import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text('Amazon',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Text('Welcome to Amazon',
        style: TextStyle(fontSize: 30),),
      ),
    );
  }

}
