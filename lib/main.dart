import 'package:critain/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Color.fromARGB(255, 12, 187, 239)
      ),
      home: Splash(),
    ));
