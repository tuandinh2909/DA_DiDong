import 'package:flutter/material.dart';

class CustomBtn extends StatefulWidget {
  const CustomBtn(
      {Key? key,
      this.ontap,
      this.text = "",
      this.paddings = const EdgeInsets.all(10)})
      : super(key: key);

  final VoidCallback? ontap;
  final String text;
  final EdgeInsets paddings;

  @override
  _CustomBtnState createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
