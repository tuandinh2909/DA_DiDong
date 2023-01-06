import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizz_app1/custom_btn.dart';
import 'package:quizz_app1/custom_input_form.dart';
import 'package:quizz_app1/forgot_password.dart';
import 'package:quizz_app1/login.dart';
import 'package:quizz_app1/registercreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  Services services = Services();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.deepPurpleAccent,
          title: Container(
            child: Row(
              children: [
                Container(
                  child: (Expanded(
                    child: (Column(
                      children: [],
                    )),
                    flex: 0,
                  )),
                ),
                Container(
                  child: (Expanded(
                    child: (Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Đăng Nhập',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    )),
                    flex: 2,
                  )),
                )
              ],
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('images/1.png'),
                width: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome ',
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Đăng nhập với email và mật khẩu\n'
                      'hoặc tiếp tục với Facebook và Google.',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                      softWrap: true,
                    ),
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomInputForm(
                      controllers: txtEmail,
                      label: "Email",
                      typeKeyboard: TextInputType.emailAddress,
                    ),
                    CustomInputForm(
                      controllers: txtPass,
                      label: "Password",
                      textSecure: true,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mật khẩu không được trống';
                        }
                        return null;
                      },
                    ),
                    Container(
                      child: Row(
                        children: [
                          Spacer(),
                          TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Forgot_password())),
                            child: Text(
                              'Forgot password',
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
                      text: "Đăng Nhập".toUpperCase(),
                      ontap: () {
                        if (txtEmail.text.isNotEmpty &&
                            txtPass.text.isNotEmpty) {
                          services.loginUser(
                              txtEmail.text, txtPass.text, context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Vui lòng nhập cho đầy đủ"),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              // Container(
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       color: Colors.deepPurpleAccent,
              //       borderRadius: BorderRadius.all(Radius.circular(30)),
              //     ),
              //     width: 200,
              //     padding: EdgeInsets.all(10),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         OutlinedButton(
              //             child: Text(
              //               'LOGIN',
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                   color: Colors.white,
              //                   fontSize: 13,
              //                   fontFamily: 'Nuito'),
              //             ),
              //             onPressed: () async {
              //               try {
              //                 final _user = _auth.signInWithEmailAndPassword(
              //                     email: _username.text,
              //                     password: _password.text);
              //                 _auth.authStateChanges().listen((event) {
              //                   if (event != null) {
              //                     //_username.clear();
              //                     //_password.clear();
              //                     const snackBar = SnackBar(
              //                         content: Text('Đăng nhập thành công!'));
              //                     ScaffoldMessenger.of(context)
              //                         .showSnackBar(snackBar);
              //                     Navigator.pushNamedAndRemoveUntil(
              //                       context,
              //                       'login',
              //                       (route) => false,
              //                     );
              //                   } else {
              //                     final snackBar = SnackBar(
              //                         content: Text(
              //                             'Email hoặc Mật Khẩu không Đúng'));
              //                     ScaffoldMessenger.of(context)
              //                         .showSnackBar(snackBar);
              //                   }
              //                 });
              //               } catch (e) {
              //                 final snackBar = SnackBar(
              //                     content: Text('Lỗi Kết Nối Đến Server'));
              //                 ScaffoldMessenger.of(context)
              //                     .showSnackBar(snackBar);
              //               }
              //             },
              //             style: OutlinedButton.styleFrom(
              //                 side: BorderSide(color: Colors.transparent))),
              //       ],
              //     )),
              Container(
                margin: EdgeInsets.all(10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    color: Colors.blueAccent,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mail),
                    color: Colors.red,
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
