import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app1/charge_page.dart';
import 'package:quizz_app1/loginscreen.dart';
import 'package:quizz_app1/setting_page.dart';

class history_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurpleAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage('images/1.png'),
              ),
              iconSize: 70,
            ),
            OutlinedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => charge_page())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    FaIcon(
                      FontAwesomeIcons.crown,
                      color: Colors.yellow,
                    ),
                    Text(
                      ' 300',
                      style: TextStyle(color: Colors.yellow),
                    )
                  ],
                )),
            OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Icon(Icons.energy_savings_leaf),
                    Text(
                      ' 150',
                      style: TextStyle(color: Colors.yellow),
                    )
                  ],
                )),
          ],
        ),
        actions: [
          PopupMenuButton(
              itemBuilder: ((context) => [
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          TextButton.icon(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => setting_page())),
                            icon: Icon(
                              Icons.settings,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Cài đặt',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontFamily: 'Nunito'),
                            ),
                          )
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          TextButton.icon(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen())),
                            icon: Icon(
                              Icons.logout,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Đăng xuất',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontFamily: 'Nunito'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]))
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 30, left: 40, right: 40, bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 188, 200, 195),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Type : single play',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 15,
                            color: Color.fromARGB(255, 225, 229, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Time : 10:05 AM'),
                      Text('Result : Win')
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(400, 60),
                      side: BorderSide(color: Colors.transparent)),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 188, 200, 195),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Type : single play',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 15,
                            color: Color.fromARGB(255, 225, 229, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Time : 10:05 AM'),
                      Text('Result : Win')
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(400, 60),
                      side: BorderSide(color: Colors.transparent)),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 188, 200, 195),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Type : single play',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 15,
                            color: Color.fromARGB(255, 225, 229, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Time : 10:05 AM'),
                      Text('Result : Win')
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(400, 60),
                      side: BorderSide(color: Colors.transparent)),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 188, 200, 195),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Type : challange play',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 15,
                            color: Color.fromARGB(255, 225, 229, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Time : 10:05 AM'),
                      Text('Result : Win')
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(400, 60),
                      side: BorderSide(color: Colors.transparent)),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 188, 200, 195),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Type : challange play',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 15,
                            color: Color.fromARGB(255, 225, 229, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Time : 10:05 AM'),
                      Text(
                        ' Result : Lose',
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(400, 60),
                      side: BorderSide(color: Colors.transparent)),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 188, 200, 195),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Type : challange play',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 15,
                            color: Color.fromARGB(255, 225, 229, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Time : 10:05 AM'),
                      Text(
                        ' Result : Lose',
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(400, 60),
                      side: BorderSide(color: Colors.transparent)),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 188, 200, 195),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Type : challange play',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 15,
                            color: Color.fromARGB(255, 225, 229, 231),
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Time : 10:05 AM'),
                      Text(
                        ' Result : Lose',
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(400, 60),
                      side: BorderSide(color: Colors.transparent)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
