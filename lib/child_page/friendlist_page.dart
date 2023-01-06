import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizz_app1/charge_page.dart';
import 'package:quizz_app1/frends_object.dart';
import 'package:quizz_app1/frends_provider.dart';
import 'package:quizz_app1/info_frends.dart';
import 'package:quizz_app1/loginscreen.dart';

class FrendsTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FrendsTabState();
  }
}

class FrendsTabState extends State<FrendsTab> {
  List<FrendsObject> lsFrends = [];
  void _LoadDanhSach() async {
    final data = await FrendProvider.getAllFrends();
    setState(() {});
    lsFrends = data;
  }

  @override
  void initState() {
    super.initState();
    _LoadDanhSach();
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
                            onPressed: () {},
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      body: ListView.builder(
          itemCount: lsFrends.length,
          itemBuilder: (context, index) => Card(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        left: 30,
                        right: 30,
                      ),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 232, 232),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage: CachedNetworkImageProvider(
                                  lsFrends[index].image),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Text(
                              lsFrends[index].name,
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 94, 110, 119),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              lsFrends[index].point,
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 94, 110, 119),
                                  fontWeight: FontWeight.bold),
                            ),
                            PopupMenuButton(
                                icon: Icon(Icons.more_vert),
                                itemBuilder: ((context) => [
                                      PopupMenuItem(
                                        child: ListTile(
                                          leading: Icon(Icons.delete),
                                          title: Text('hủy kết bạn'),
                                          subtitle: Text('delete'),
                                          onTap: () {},
                                        ),
                                      ),
                                      PopupMenuItem(
                                        child: ListTile(
                                          leading: Icon(Icons.person),
                                          title: Text('Trang cá nhân'),
                                          subtitle: Text('user info'),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      InfoFrends(
                                                    frends: lsFrends[index],
                                                  ),
                                                ));
                                          },
                                        ),
                                      )
                                    ]))
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(100, 60),
                            side: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ],
                ),
              )),
    );
  }
}
