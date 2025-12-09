import 'package:hibuy/config/utils/formatting.dart';
import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chatinfo extends StatelessWidget {
  String img;
  String name;
  String msg;
  String time;
  int count;
  Chatinfo({
    super.key,
    required this.img,
    required this.name,
    required this.msg,
    required this.time,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        isThreeLine: true,
        contentPadding: EdgeInsets.all(8),
        leading: CircleAvatar(backgroundImage: AssetImage(img)),
        title: Text(name, style: heading18Style()),
        subtitle: Text(msg, style: TextStyle(color: Colors.grey)),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(time, style: TextStyle(color: Colors.grey, fontSize: 14)),
            SizedBox(height: 1),
            count > 0
                ? SizedBox(
                    height: 24,
                    child: Chip(
                      padding: EdgeInsets.all(0),
                      label: Text(
                        count.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      backgroundColor: AppColors.first,
                      shape: CircleBorder(),
                    ),
                  )
                : Text(""),
          ],
        ),
      ),
    );
  }
}
