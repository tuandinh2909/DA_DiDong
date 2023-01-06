import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:quizz_app1/child_page/friendlist_page.dart';
import 'package:quizz_app1/info_frends.dart';
import 'package:quizz_app1/loginscreen.dart';
import 'package:quizz_app1/registercreen.dart';
import 'package:quizz_app1/start_page.dart';
import 'package:quizz_app1/topicscreen.dart';
import 'package:quizz_app1/trangchu.dart';

/*Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}*/

// void main() {
//   runApp(MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => RegisterCreen(),
        'login': (context) => LoginScreen(),
        'trangchu': (context) => trangchu()
      },
      //home: RegisterCreen(),
    );
  }
}
