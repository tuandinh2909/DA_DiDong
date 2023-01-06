import 'package:flutter/material.dart';
import 'package:quizz_app1/confirm_password.dart';

class Forgot_password extends StatelessWidget {
  @override
  bool remember = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Quên mật khẩu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/1.png'),
                width: 250,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                      height: 10,
                    ),
                    Text(
                      'Vui lòng nhập email của bạn và chúng tôi sẽ\n'
                      'gửi bạn đường link qua email để xác nhận ',
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
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Nhập email',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 42,
                          vertical: 20,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.deepPurpleAccent,
                            )),
                        suffixIcon: Icon(Icons.mail),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  width: 300,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                          child: Text(
                            'Đăng nhập',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Nuito'),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Confirm_password())),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.transparent))),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
