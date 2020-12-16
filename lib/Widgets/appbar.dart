import 'package:flutter/material.dart';

AppBar appbar(String title) {
  return AppBar(
    backgroundColor: Color.fromRGBO(61, 0, 45, 1),
    centerTitle: true,
    title: Text(title,
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontFamily: 'Poppins')),
  );
}
