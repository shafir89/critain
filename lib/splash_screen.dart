import 'dart:async';
import 'package:critain/loginpage.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  delayScreen() async {
    //membuat fungsi delayscreen dan mengatur durasi splash screen
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Aplikasi(),
            ));
      },
    );
  }

  @override
  void initState() {
    //akan dijalankan pertama kali saat aplikasi di run
    super.initState();
    delayScreen();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 20, 21),
      body: Center(
        child: Image.asset(
          'assets/splash.jpeg',
          width: 207,
          height: 200,
        ),
      ),
    );
  }
}
