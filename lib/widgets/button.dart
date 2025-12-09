import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String lable;
  VoidCallback  onPressed;
   Button({super.key, required this.lable, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 455,
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

// ignore: must_be_immutable
class Button2 extends StatelessWidget {
  String label;
  VoidCallback  onPressed;
   Button2({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              width: 450,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.first
                ),
                onPressed: onPressed, 
                child: Text(label, style: TextStyle(color: Colors.white, fontSize: 18))),
            );
  }
}

