import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SupportCard extends StatelessWidget {
  IconData icon;
  String title;
  String msg;
  SupportCard({super.key, required this.icon, required this.title, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.all(15),
                width: 220,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color:Color(0xFFF1F1F1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon, color: AppColors.first, size: 50,),
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(msg, style: TextStyle(fontSize: 12, color: const Color(0xFF888888)), textAlign: TextAlign.center,)
                  ],
                ),
              );
  }
}