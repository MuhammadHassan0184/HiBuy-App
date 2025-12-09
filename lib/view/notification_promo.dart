import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class NotificationPromo extends StatelessWidget {
  const NotificationPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
                  "Promotional",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            titleinfo(),
            SizedBox(height: 15),
            titleinfo(),
            SizedBox(height: 15),
            titleinfo(),
            SizedBox(height: 15),
            titleinfo(),
            SizedBox(height: 15),
            titleinfo(),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class titleinfo extends StatelessWidget {
  const titleinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Title",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "05 Feb 2025, 10:30 AM",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. In, iure minus error doloribus saepe natus. Lorem ipsum dolor sit amet consectetur adipisicing elit. In, iure minus error doloribus saepe natus. ",
            maxLines: 2,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
