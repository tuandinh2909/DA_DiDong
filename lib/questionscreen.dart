import 'dart:ui';
import 'dart:async';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app1/resultscreen.dart';

class QuestionsScreen extends StatelessWidget {
  final CustomTimerController _controller = CustomTimerController();

  @override
  Widget build(BuildContext context) {
    Timer _timer;
    int _start = 10;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTimer(
                controller: _controller,
                begin: Duration(seconds: 10),
                end: Duration(seconds: 1),
                builder: (time) {
                  return Text("${time.seconds}",
                      style: TextStyle(fontSize: 24.0, color: Colors.black));
                })
          ],
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/2.jpg'), fit: BoxFit.fitWidth),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.navigate_before_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 40,
                  ),
                  Text(
                    ' Science',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 40,
                  ),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Question 1/10',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Klavika',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 10, top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(25),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(
                            top: 40,
                            left: 15,
                            right: 15,
                          ),
                          child:
                              Text('Người ta thường nấu canh cua với thứ gì ?'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 211, 221, 230),
                    borderRadius: BorderRadius.circular(40)),
                child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'A. Củ cải',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        )
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        side: BorderSide(color: Colors.transparent))),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 211, 221, 230),
                    borderRadius: BorderRadius.circular(40)),
                child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'B. Mộc nhĩ',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        )
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        side: BorderSide(color: Colors.transparent))),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 125, 231, 127),
                    borderRadius: BorderRadius.circular(40)),
                child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'C. Rau đay',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 241, 238, 238)),
                        )
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        side: BorderSide(color: Colors.transparent))),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 211, 221, 230),
                    borderRadius: BorderRadius.circular(40)),
                child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'D. Xúp lơ xanh',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        )
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        side: BorderSide(color: Colors.transparent))),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10),
                child: OutlinedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultScreen())),
                  child: Text(
                    'Giải thích',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 225, 223, 119)),
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.transparent)),
                ),
              )
            ],
          )),
    );
  }
}
