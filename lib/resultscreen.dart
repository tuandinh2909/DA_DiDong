import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app1/child_page/info_page.dart';
import 'package:quizz_app1/loginscreen.dart';
import 'package:quizz_app1/setting_page.dart';
import 'package:quizz_app1/totaltoday_screen.dart';

class ResultScreen extends StatelessWidget {
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
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen())),
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
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/2.jpg'), fit: BoxFit.fitWidth)),
          child: ListView(
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 80,
                              child: CircleAvatar(
                                radius: 75,
                                backgroundImage:
                                    AssetImage('images/avatar.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                            ),
                            Text(
                              'Nhóm 6',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nunito'),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    gradient: new LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 245, 183, 112),
                                        Colors.cyan
                                      ],
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  width: 350,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.pinkAccent,
                                        backgroundImage: AssetImage(
                                          'images/cup.png',
                                        ),
                                      ),
                                      Text(
                                        'Score: ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        '2500',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    gradient: new LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 245, 183, 112),
                                        Colors.cyan
                                      ],
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  width: 350,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.green,
                                        backgroundImage: AssetImage(
                                          'images/dongho.png',
                                        ),
                                      ),
                                      Text(
                                        '10:00 ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'minutes',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    gradient: new LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 245, 183, 112),
                                        Colors.cyan
                                      ],
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  width: 350,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                          'images/check.png',
                                        ),
                                      ),
                                      Text(
                                        'Result ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        '10/10',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                width: 100,
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.crown,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    Text(
                                      '100',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TotaltodayScreen())),
                                    icon: Image.asset(
                                      'images/rank.png',
                                    ),
                                    iconSize: 80,
                                  ),
                                ],
                              ),
                              Container(
                                  margin: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      OutlinedButton(
                                        child: Text(
                                          'Play Again',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Nuito'),
                                        ),
                                        onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    info_page())),
                                        style: OutlinedButton.styleFrom(
                                            minimumSize: Size(100, 60),
                                            side: BorderSide(
                                                color: Colors.transparent)),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        )
                      ]))
            ],
          ),
        ));
  }
}
