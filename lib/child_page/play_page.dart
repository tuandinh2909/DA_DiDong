import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizz_app1/loginscreen.dart';

class play_page extends StatelessWidget {
  const play_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        automaticallyImplyLeading: false,
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
            Text(
              'Play page',
              style: TextStyle(fontSize: 20),
            ),
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
    );
  }
}
