import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app1/frends_object.dart';
import 'package:quizz_app1/frends_provider.dart';
import 'package:quizz_app1/loginscreen.dart';
import 'package:quizz_app1/setting_page.dart';
import 'package:quizz_app1/topicscreen.dart';
import 'package:quizz_app1/totaltoday_screen.dart';

class InfoFrends extends StatefulWidget {
  FrendsObject frends;
  InfoFrends({Key? key, required this.frends}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return InfoFrendsState();
  }
}

class InfoFrendsState extends State<InfoFrends> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtWin = TextEditingController();
  TextEditingController txtlose = TextEditingController();
  TextEditingController txtpoint = TextEditingController();
  TextEditingController txtImage = TextEditingController();

  void initState() {
    // TODO: implemant initState
    super.initState();
    txtName.text = this.widget.frends.name;
    txtWin.text = this.widget.frends.win;
    txtlose.text = this.widget.frends.lose;
    txtImage.text = this.widget.frends.image;
  }

  List<FrendsObject> lsFrends = [];
  void _LoadDanhSach() async {
    final data = await FrendProvider.getAllFrends();
    setState(() {});
    lsFrends = data;
  }

  @override
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
                        radius: 56,
                        child: CachedNetworkImage(
                          imageUrl: this.widget.frends.image,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.widget.frends.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Nunito',
                  ),
                ),
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
                        this.widget.frends.point,
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
                        this.widget.frends.win,
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
                        this.widget.frends.lose,
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
          ]),
        ));
  }
}
