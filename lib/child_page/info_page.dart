import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app1/loginscreen.dart';
import 'package:quizz_app1/setting_page.dart';
import 'package:quizz_app1/topicscreen.dart';
import 'package:quizz_app1/totaltoday_screen.dart';

class info_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return info_pageState();
  }
}

class info_pageState extends State<info_page> {
  String _uid = "";
  String _name = "";
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    getdata();
  }

  void getdata() async {
    User user = _auth.currentUser!;
    _uid = user.uid;
    final DocumentSnapshot userdoc =
        await FirebaseFirestore.instance.collection('users').doc(_uid).get();
    setState(() {
      _name = userdoc.get('Nickname');
    });
    return;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                  onPressed: () {},
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
                                'Settings',
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
                              onPressed: (() async {
                                FirebaseAuth.instance.signOut();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text('Đăng xuất thành công.')));
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => LoginScreen())));
                              }),
                              // onPressed: () => Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => LoginScreen())),
                              icon: Icon(
                                Icons.logout,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'Logout',
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
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(padding: EdgeInsets.all(10)),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent,
                      radius: 115,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/avatar.png'),
                        radius: 56,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: -2,
                      child: SizedBox(
                        width: 36,
                        height: 36,
                        child: FloatingActionButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {},
                          child: Image(image: AssetImage('images/camera.jpg')),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _name,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Nunito',
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(AntIcons.editOutlined))
              ],
            ),
            Container(
                width: 300,
                height: 70,
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.car_crash),
                      Text(
                        'Tổng điểm',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 20,
                            color: Colors.black),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 231, 225, 225),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: BorderSide(color: Colors.deepPurpleAccent)),
                )),
            Container(
                width: 300,
                height: 70,
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.celebration_outlined),
                      Text(
                        'Số trận thắng',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 20,
                            color: Colors.black),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 231, 225, 225),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: BorderSide(color: Colors.deepPurpleAccent)),
                )),
            Container(
                width: 300,
                height: 70,
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.car_crash),
                      Text(
                        'Số trận thua',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 20,
                            color: Colors.black),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 231, 225, 225),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: BorderSide(color: Colors.deepPurpleAccent)),
                )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    height: 120,
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TopicScreen())),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(10)),
                          FaIcon(
                            FontAwesomeIcons.circlePlay,
                            color: Colors.yellow,
                            size: 50,
                          ),
                          Text(
                            'Chơi ngay',
                            style: TextStyle(
                                fontSize: 15, color: Colors.yellowAccent),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          side: BorderSide(color: Colors.purple)),
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 120,
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(10)),
                          FaIcon(
                            FontAwesomeIcons.googlePlay,
                            color: Colors.yellow,
                            size: 50,
                          ),
                          Text(
                            'Thách đấu',
                            style: TextStyle(
                                fontSize: 15, color: Colors.yellowAccent),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          side: BorderSide(color: Colors.purple)),
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 120,
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TotaltodayScreen())),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(10)),
                          FaIcon(
                            FontAwesomeIcons.crown,
                            color: Colors.yellow,
                            size: 50,
                          ),
                          Text(
                            'Bảng xếp hạng',
                            style: TextStyle(
                                fontSize: 10, color: Colors.yellowAccent),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          side: BorderSide(color: Colors.purple)),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
