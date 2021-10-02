import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final Color bgColor;
  final String textButton;
  final VoidCallback onPress;

  const SignButton(
      {required this.bgColor, required this.textButton, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 40.0),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(40.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
