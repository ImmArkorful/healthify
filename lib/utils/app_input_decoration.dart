import 'package:flutter/material.dart';

class AppInputDecoration {
  InputDecoration inputDecoration(String hintlabel) {
    return InputDecoration(
      labelText: hintlabel,
      labelStyle: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontSize: 16,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      hintText: hintlabel,
      hintStyle: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontSize: 16,
      ),
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(22),
      // ),
    );
  }
}
