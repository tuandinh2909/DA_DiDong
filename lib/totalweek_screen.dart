import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app1/totalalltime_screen.dart';
import 'package:quizz_app1/totaltoday_screen.dart';

class Totalweek_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LeaderBoard',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 40,
                            child: CircleAvatar(
                                radius: 38,
                                backgroundImage: AssetImage(
                                  'images/angelia.png',
                                )),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            child: Text('2',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.crown,
                            color: Colors.yellow,
                            size: 50,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 60,
                            child: CircleAvatar(
                                radius: 56,
                                backgroundImage: AssetImage(
                                  'images/mono.jpg',
                                )),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.red,
                            child: Text('1',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 40,
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.yellow,
                            radius: 40,
                            child: CircleAvatar(
                                radius: 38,
                                backgroundImage: AssetImage(
                                  'images/tung.png',
                                )),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.yellow,
                            child: Text('3',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 40, top: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Row(
                              children: [
                                OutlinedButton(
                                  child: Text(
                                    'Today',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Nuito'),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            TotaltodayScreen(),
                                      ),
                                    );
                                  },
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size(100, 60),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                ),
                              ],
                            )),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Row(
                              children: [
                                OutlinedButton(
                                  child: Text(
                                    'Week',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Nuito'),
                                  ),
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size(100, 60),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                ),
                              ],
                            )),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 40, top: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Row(
                              children: [
                                OutlinedButton(
                                  child: Text(
                                    'All Time',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Nuito'),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            TotalAlltimeScreen(),
                                      ),
                                    );
                                  },
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size(100, 60),
                                      side: BorderSide(
                                          color: Colors.transparent)),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
                Container(
                  color: Color.fromARGB(255, 178, 80, 207),
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 190, 189, 189),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          width: 500,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '4',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(
                                    'images/1.jpg',
                                  ),
                                ),
                              ),
                              Text(
                                'Margot Robbie',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.crown,
                                color: Colors.yellow,
                                size: 30,
                              ),
                              Text(
                                '3000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 190, 189, 189),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          width: 500,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '5',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(
                                    'images/huan.png',
                                  ),
                                ),
                              ),
                              Text(
                                'Huấn Hoa Hồng',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.crown,
                                color: Colors.yellow,
                                size: 30,
                              ),
                              Text(
                                '2800',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 190, 189, 189),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          width: 500,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '6',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(
                                    'images/nv2.jpg',
                                  ),
                                ),
                              ),
                              Text(
                                'Margot Robbie',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.crown,
                                color: Colors.yellow,
                                size: 30,
                              ),
                              Text(
                                '2200',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 190, 189, 189),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          width: 500,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '7',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(
                                    'images/nv3.jpg',
                                  ),
                                ),
                              ),
                              Text(
                                'Margot Robbie',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.crown,
                                color: Colors.yellow,
                                size: 30,
                              ),
                              Text(
                                '2000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 190, 189, 189),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          width: 500,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '8',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(
                                    'images/nv4.jpg',
                                  ),
                                ),
                              ),
                              Text(
                                'Margot Robbie',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.crown,
                                color: Colors.yellow,
                                size: 30,
                              ),
                              Text(
                                '1800',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 190, 189, 189),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          width: 500,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '9',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(
                                    'images/nv5.jpg',
                                  ),
                                ),
                              ),
                              Text(
                                'Johnny Depp',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.crown,
                                color: Colors.yellow,
                                size: 30,
                              ),
                              Text(
                                '1600',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )

        //Row(),
        // Row(
        //children: [
        //Container(
        // color: Colors.deepPurpleAccent,
        // child: Column(
        //  children: [ListView()],
        // ))

        //  ],
        );
    //);
  }
}
