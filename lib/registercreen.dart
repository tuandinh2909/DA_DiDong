import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app1/custom_btn.dart';
import 'package:quizz_app1/custom_input_form.dart';
import 'package:quizz_app1/loginscreen.dart';

class RegisterCreen extends StatefulWidget {
  RegisterCreen({Key? key}) : super(key: key);

  @override
  State<RegisterCreen> createState() => RegisterState();
}

class RegisterState extends State<RegisterCreen> {
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    TextEditingController nickname = TextEditingController();
    TextEditingController txtPass = TextEditingController();
    TextEditingController txtPass2 = TextEditingController();
    final _auth = FirebaseAuth.instance;
    final _user = FirebaseAuth.instance.currentUser;
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quizz Game',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        )),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Đăng Ký',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nhanh chóng, dễ dàng',
                  style: TextStyle(
                    color: Color(0xff888888),
                    fontSize: 15,
                  )),
            ],
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomInputForm(
                  controllers: nickname,
                  label: "Tên đăng nhập",
                ),
                CustomInputForm(
                  controllers: txtEmail,
                  label: "Email",
                  typeKeyboard: TextInputType.emailAddress,
                ),
                CustomInputForm(
                  controllers: txtPass,
                  label: "Mật khẩu",
                  textSecure: true,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Mật khẩu không được trống';
                    }
                    if (txtPass.text.length > 8) {
                      return 'Mật khẩu phải hơn 8 kí tự';
                    }
                    return null;
                  },
                ),
                CustomInputForm(
                  controllers: txtPass2,
                  label: "Xác nhận mật khẩu",
                  textSecure: true,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập xác nhận mật khẩu';
                    }
                    if (txtPass2.text == txtPass) {
                      return 'Không trùng khớp';
                    }
                    return null;
                  },
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Bạn đã có tài khoản?'),
                      TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen())),
                        child: Text(
                          'Đăng Nhập',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                CustomBtn(
                  text: "Đăng ký ngay".toUpperCase(),
                  ontap: () async {
                    if (txtEmail.text.isEmpty ||
                        txtPass.text.isEmpty ||
                        nickname.text.isEmpty ||
                        txtPass2.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Vui lòng nhập đầy đủ thông tin'),
                        ),
                      );
                    } else if (txtPass.text != txtPass2.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Vui lòng nhập trùng password'),
                        ),
                      );
                    } else if (txtPass.text.length > 0 &&
                        txtPass.text.length < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Vui lòng nhập mật khẩu 8 kí tự!'),
                        ),
                      );
                    } else {
                      try {
                        UserCredential NewUser = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: txtEmail.text, password: txtPass.text);
                        User? user = NewUser.user;
                        await FirebaseFirestore.instance
                            .collection('users')
                            .doc(user?.uid)
                            .set({
                          "Coin": 0,
                          "Diamond": 0,
                          "Email": txtEmail.text,
                          "Energy": 100,
                          "Nickname": nickname.text,
                          "PassWord": txtPass.text,
                          "CreateDate": DateTime.now(),
                        });

                        if (NewUser != null) {
                          const snackBar =
                              SnackBar(content: Text('Đăng ký thành công!'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            'login',
                            (route) => false,
                          );
                        } else {
                          final snackBar = SnackBar(
                              content: Text('Tài khoản này không hợp lệ'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      } catch (e) {
                        final snackBar =
                            SnackBar(content: Text('Có lỗi xảy ra!'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
