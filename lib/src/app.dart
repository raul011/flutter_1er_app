import 'package:flutter/material.dart';
import 'package:prueba_web/src/pages/home_page.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build( context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "facebook",
      home: Center(
        child: HomePage(),
      ),
    );
  }
}