
import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String lable;
  VoidCallback  onPressed;
   Button({super.key, required this.lable, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 450,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.first,
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10))
              ),
              onPressed: onPressed,
               child: Text(lable, style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
          );
  }
}

