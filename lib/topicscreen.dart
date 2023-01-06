import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app1/charge_page.dart';
import 'package:quizz_app1/child_page/play.dart';
import 'package:quizz_app1/questionscreen.dart';
import 'package:quizz_app1/utils.dart';

class TopicScreen extends StatefulWidget {
  const TopicScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return TopicScreenState();
  }
}

class TopicScreenState extends State<TopicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
              Text(
                'Topic ',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
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
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Utils.listThemeTheThao("Thể Thao", play_TheThao),
                Utils.listThemeHistory("Lịch sử", play_LichSu),
                Utils.listThemeDiaLy("Địa lý", play_DiaLi),
                Utils.listThemeThienNhien("Thiên Nhiên", play_ThienNhien),
                Utils.listThemeDoVui("Đố vui", play_DoVui),
                Utils.listThemeVanHoc("Văn học", play_VanHoc),
                // Container(
                //   margin:
                //       EdgeInsets.only(left: 50, right: 50, top: 70, bottom: 40),
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(60),
                //           topRight: Radius.circular(15),
                //           bottomRight: Radius.circular(60)),
                //       gradient: new LinearGradient(colors: [
                //         Color.fromARGB(255, 65, 169, 225),
                //         Color.fromARGB(255, 33, 10, 162)
                //       ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                //   child: OutlinedButton(
                //     onPressed: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => QuestionsScreen())),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           '    Science',
                //           style: TextStyle(
                //               fontFamily: 'Nunito',
                //               fontSize: 25,
                //               color: Color.fromARGB(255, 225, 229, 231),
                //               fontWeight: FontWeight.bold),
                //         ),
                //         Image(
                //           image: AssetImage('images/science.png'),
                //           width: 100,
                //         )
                //       ],
                //     ),
                //     style: OutlinedButton.styleFrom(
                //         minimumSize: Size(100, 90),
                //         side: BorderSide(color: Colors.transparent)),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(left: 50, right: 50, bottom: 30),
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(60),
                //           topRight: Radius.circular(15),
                //           bottomRight: Radius.circular(60)),
                //       gradient: new LinearGradient(colors: [
                //         Color.fromARGB(255, 219, 122, 74),
                //         Color.fromARGB(255, 126, 66, 16)
                //       ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                //   child: OutlinedButton(
                //     onPressed: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => QuestionsScreen())),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           '    History',
                //           style: TextStyle(
                //               fontFamily: 'Nunito',
                //               fontSize: 25,
                //               fontWeight: FontWeight.bold,
                //               color: Color.fromARGB(255, 225, 229, 231)),
                //         ),
                //         Image(
                //           image: AssetImage('images/history.png'),
                //           width: 100,
                //         )
                //       ],
                //     ),
                //     style: OutlinedButton.styleFrom(
                //         minimumSize: Size(300, 90),
                //         side: BorderSide(color: Colors.transparent)),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(left: 50, right: 50, bottom: 30),
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(60),
                //           topRight: Radius.circular(15),
                //           bottomRight: Radius.circular(60)),
                //       gradient: new LinearGradient(colors: [
                //         Color.fromARGB(255, 231, 198, 108),
                //         Color.fromARGB(255, 232, 111, 12)
                //       ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                //   child: OutlinedButton(
                //     onPressed: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => QuestionsScreen())),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           '  Geography',
                //           style: TextStyle(
                //               fontFamily: 'Nunito',
                //               fontSize: 25,
                //               fontWeight: FontWeight.bold,
                //               color: Color.fromARGB(255, 225, 229, 231)),
                //         ),
                //         Image(
                //           image: AssetImage('images/georaphy.png'),
                //           width: 100,
                //         )
                //       ],
                //     ),
                //     style: OutlinedButton.styleFrom(
                //         minimumSize: Size(300, 90),
                //         side: BorderSide(color: Colors.transparent)),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(left: 50, right: 50, bottom: 30),
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(60),
                //           topRight: Radius.circular(15),
                //           bottomRight: Radius.circular(60)),
                //       gradient: new LinearGradient(colors: [
                //         Color.fromARGB(255, 224, 130, 201),
                //         Color.fromARGB(255, 219, 22, 143)
                //       ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                //   child: OutlinedButton(
                //     onPressed: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => QuestionsScreen())),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           '    Culture',
                //           style: TextStyle(
                //               fontFamily: 'Nunito',
                //               fontSize: 25,
                //               fontWeight: FontWeight.bold,
                //               color: Color.fromARGB(255, 225, 229, 231)),
                //         ),
                //         Image(
                //           image: AssetImage('images/culture.png'),
                //           width: 100,
                //         )
                //       ],
                //     ),
                //     style: OutlinedButton.styleFrom(
                //         minimumSize: Size(300, 90),
                //         side: BorderSide(color: Colors.transparent)),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(left: 50, right: 50, bottom: 30),
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(60),
                //           topRight: Radius.circular(15),
                //           bottomRight: Radius.circular(60)),
                //       gradient: new LinearGradient(colors: [
                //         Color.fromARGB(255, 113, 236, 183),
                //         Color.fromARGB(255, 6, 122, 63)
                //       ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                //   child: OutlinedButton(
                //     onPressed: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => QuestionsScreen())),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           '    Sport',
                //           style: TextStyle(
                //               fontFamily: 'Nunito',
                //               fontSize: 25,
                //               fontWeight: FontWeight.bold,
                //               color: Color.fromARGB(255, 225, 229, 231)),
                //         ),
                //         Image(
                //           image: AssetImage('images/sport.png'),
                //           width: 100,
                //         )
                //       ],
                //     ),
                //     style: OutlinedButton.styleFrom(
                //         minimumSize: Size(300, 90),
                //         side: BorderSide(color: Colors.transparent)),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(left: 50, right: 50, bottom: 30),
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(60),
                //           topRight: Radius.circular(15),
                //           bottomRight: Radius.circular(60)),
                //       gradient: new LinearGradient(colors: [
                //         Color.fromARGB(255, 240, 141, 125),
                //         Color.fromARGB(255, 154, 31, 10)
                //       ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                //   child: OutlinedButton(
                //     onPressed: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => QuestionsScreen())),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           'Mathematics ',
                //           style: TextStyle(
                //               fontFamily: 'Nunito',
                //               fontSize: 25,
                //               fontWeight: FontWeight.bold,
                //               color: Color.fromARGB(255, 225, 229, 231)),
                //         ),
                //         Image(
                //           image: AssetImage('images/math.png'),
                //           width: 90,
                //         )
                //       ],
                //     ),
                //     style: OutlinedButton.styleFrom(
                //         minimumSize: Size(300, 90),
                //         side: BorderSide(color: Colors.transparent)),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.only(
                //     left: 50,
                //     right: 50,
                //   ),
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(60),
                //           topRight: Radius.circular(15),
                //           bottomRight: Radius.circular(60)),
                //       gradient: new LinearGradient(colors: [
                //         Color.fromARGB(255, 116, 230, 216),
                //         Color.fromARGB(255, 9, 111, 120)
                //       ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                //   child: OutlinedButton(
                //     onPressed: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => QuestionsScreen())),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           '    Natural',
                //           style: TextStyle(
                //               fontFamily: 'Nunito',
                //               fontSize: 25,
                //               fontWeight: FontWeight.bold,
                //               color: Color.fromARGB(255, 225, 229, 231)),
                //         ),
                //         Image(
                //           image: AssetImage('images/natural.png'),
                //           width: 100,
                //         )
                //       ],
                //     ),
                //     style: OutlinedButton.styleFrom(
                //         minimumSize: Size(300, 90),
                //         side: BorderSide(color: Colors.transparent)),
                //   ),
                // ),
              ],
            ),
          ],
        ));
  }

  String theme = '';

  void play_VatLi() {
    setState(() {
      theme = 'goivatli';
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Play(
                    theme: theme,
                  )));
    });
  }

  void play_LichSu() {
    setState(() {
      theme = 'goilichsu';
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Play(
                    theme: theme,
                  )));
    });
  }

  void play_DiaLi() {
    setState(() {
      theme = 'goidiali';
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Play(
                    theme: theme,
                  )));
    });
  }

  void play_TheThao() {
    setState(() {
      theme = 'goithethao';
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Play(
                    theme: theme,
                  )));
    });
  }

  void play_VanHoc() {
    setState(() {
      theme = 'goivanhoc';
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Play(
                    theme: theme,
                  )));
    });
  }

  void play_ThienNhien() {
    setState(() {
      theme = 'goithiennhien';
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Play(
                    theme: theme,
                  )));
    });
  }

  void play_DoVui() {
    setState(() {
      theme = 'goidovui';
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Play(
                    theme: theme,
                  )));
    });
  }
}
