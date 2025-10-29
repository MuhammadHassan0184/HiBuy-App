import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 15),
            Notifications(label: "Promotional", count: 11, screenUrl: '/NotificationPromo',),
            SizedBox(height: 15),
            Notifications(label: "Activity", count: 10, screenUrl: '/Activity',),
            SizedBox(height: 15),
            Notifications(label: "Offers", count: 10, screenUrl: '/Offers',),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Notifications extends StatelessWidget {
  String label;
  int count;
  String screenUrl;

  Notifications( {
    super.key, 
    required this.label, 
    required this.count, 
    required this.screenUrl, 
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { Get.toNamed(screenUrl); },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
           count> 0 ?
            Chip(
              padding: EdgeInsets.all(10),
              backgroundColor: AppColors.first,
              shape: CircleBorder(),
              label: Text(
                 count.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
              ),
            ): Text(""),
          ],
        ),
      ),
    );
  }
}
