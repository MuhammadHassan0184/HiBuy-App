import 'package:flutter/material.dart';
import 'package:hibuy/widgets/chatinfo.dart';


class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Chatinfo(img: "assets/chatimg1.png", name: "Store Name", msg: "Hi, are you Available Tomorrow?", time: "9:35 AM", count: 1),
          SizedBox(height: 10,),
          Chatinfo(img: "assets/chatimg2.png", name: "Store Name", msg: "Hi, are you Available Tomorrow?", time: "10:36 AM", count: 1),
          SizedBox(height: 10,),
          Chatinfo(img: "assets/chatimg3.png", name: "Store Name", msg: "Hi, are you Available Tomorrow?", time: "10:37 AM", count: 1),
          SizedBox(height: 10,),
          Chatinfo(img: "assets/chatimg4.png", name: "Store Name", msg: "Hi, are you Available Tomorrow?", time: "10:38 AM", count: 1),
          SizedBox(height: 10,),
          Chatinfo(img: "assets/chatimg5.png", name: "Store Name", msg: "Hi, are you Available Tomorrow?", time: "10:39 AM", count: 1),
          SizedBox(height: 10,),
          Chatinfo(img: "assets/chatimg6.png", name: "Store Name", msg: "Hi, are you Available Tomorrow?", time: "10:40 AM", count: 1),
        ],
      ),
    );
  }
}