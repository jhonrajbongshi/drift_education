import 'package:flutter/material.dart';
class RoundedTextField extends StatelessWidget {
  RoundedTextField({@required this.textName,this.obscureText});
  final String textName;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      obscureText: obscureText,
      style: TextStyle(fontSize: 18, color: Colors.black54),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: textName,
        contentPadding: const EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(23),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(23),
        ),
      ),
    );
  }
}