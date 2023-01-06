import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:quizz_app1/child_page/backpack_page.dart';
import 'package:quizz_app1/child_page/friendlist_page.dart';
import 'package:quizz_app1/child_page/history_page.dart';
import 'package:quizz_app1/child_page/info_page.dart';

class trangchu extends StatelessWidget {
  const trangchu({super.key});

  @override
  Widget build(BuildContext context) {
    return trangchu_state();
  }
}

class trangchu_state extends StatefulWidget {
  const trangchu_state({super.key});

  @override
  State<trangchu_state> createState() => _trangchu_State();
}

class _trangchu_State extends State<trangchu_state> {
  final items = const [
    Icon(Icons.person, size: 30, color: Colors.white),
    Icon(Icons.history, size: 30, color: Colors.white),
    Icon(AntIcons.usergroupAddOutlined, size: 30, color: Colors.white),
    Icon(Icons.backpack, size: 30, color: Colors.white),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        color: Colors.deepPurpleAccent,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: Container(
          color: Colors.transparent,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getselectedWidget(index: index)),
    );
  }
}

Widget getselectedWidget({required int index}) {
  Widget widget;
  switch (index) {
    case 0:
      widget = info_page();
      break;
    case 1:
      widget = history_page();
      break;
    case 2:
      widget = FrendsTab();
      break;
    case 3:
      widget = const backpack_page();
      break;
    default:
      widget = info_page();
      break;
  }

  return widget;
}
