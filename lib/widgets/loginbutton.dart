

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
              width: 450,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE4E2E2)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Icon(icon, size: 30, color: Colors.grey,),
                  ),
                  SizedBox(width: 100,),
                  Text(lable, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18),)
                ],
              ),
            ),
          );
  }
}