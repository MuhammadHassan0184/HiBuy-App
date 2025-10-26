
import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

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