
// ignore_for_file: use_build_context_synchronously

import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';
import 'login.dart'; 

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
       context,MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.first,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(),
              child: Image.asset("assets/splashLogo.png"),
            ),
          )
        ],
      ),
    );
  }
}
