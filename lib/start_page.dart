import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizz_app1/loginscreen.dart';
import 'package:quizz_app1/registercreen.dart';

class start_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => start_page_state();
}

class start_page_state extends State<start_page> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        (() => Navigator.push(context,
            MaterialPageRoute(builder: (context) => RegisterCreen()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Image.asset('images/1.png'),
            ),
          ],
        ),
      ),
    );
  }
}
