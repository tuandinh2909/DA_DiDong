import 'package:flutter/material.dart';

typedef String? StringCallBack(String? arg);

class CustomInputForm extends StatelessWidget {
  const CustomInputForm(
      {Key? key,
      this.controllers,
      this.label = '',
      this.icon = '',
      this.hint = '',
      this.textSecure = false,
      this.typeKeyboard = TextInputType.text,
      this.validate})
      : super(key: key);

  final String label;
  final String icon;
  final String hint;
  final bool textSecure;
  final TextInputType typeKeyboard;
  final StringCallBack? validate;
  final TextEditingController? controllers;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            child: SizedBox(
              child: TextFormField(
                controller: controllers,
                validator: validate,
                obscureText: textSecure,
                keyboardType: typeKeyboard,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: hint,
                  labelText: label,
                  suffixIcon: Icon(Icons.person),
                ),
              ),
            )),
      ]),
    );
  }
}
