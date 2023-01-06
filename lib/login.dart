import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app1/trangchu.dart';

class Services {
  final auth = FirebaseAuth.instance;
  loginUser(email, password, context) async {
    try {
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        const snackBar = SnackBar(content: Text('Đăng nhập thành công!'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.pushNamedAndRemoveUntil(
          context, 'trangchu', (route) => false,
          //MaterialPageRoute(builder: (context) => trangchu())
        );
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Email hoặc mật khẩu không chính xác!"),
        ),
      );
    }
  }
}
