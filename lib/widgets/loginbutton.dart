import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Loginbutton extends StatelessWidget {
  IconData icon;
  String lable;
   Loginbutton({super.key, required this.icon, required this.lable});

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE4E2E2)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: ListTile(
                leading: Icon(icon, size: 30, color: Colors.grey,),
                title: Text(lable, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18),textAlign: TextAlign.center, ),
              ),
            ),
          );
  }
}