

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hibuy/config/colors.dart';

// ignore: must_be_immutable
class AppCards extends StatelessWidget {
  String img;
  String label1;
  String label2;
  String label3;
  String label4;
  String label5;
  String label6;
    AppCards({
    super.key,
    required this.img,
    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4,
    required this.label5,
    required this.label6,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 180,
            height: 220,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.grey
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.all( 10),
                  width: 160,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset(img, fit: BoxFit.fill,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(label1, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(label2, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 3,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(label3, style: TextStyle(color: const Color(0xFFBDBCBC), fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 75),
                      child: Text(label4, style: TextStyle(color: const Color(0xFFBDBCBC), fontSize: 10),),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(label5, style: TextStyle(color: Colors.grey, fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(label6, style: TextStyle(color: Colors.green, fontSize: 13),),
                    ),
                    SizedBox(width: 32,),
                    InkWell(
                      onTap: () {
                        Get.toNamed("/PakageDetails");
                      },
                      child: Container(
                        width: 45,
                        height: 25,
                        decoration: BoxDecoration(
                          color: AppColors.first,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.shopping_cart_outlined, size: 13, color: Colors.white,),
                          SizedBox(width: 2,),
                          Text('Add', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)
                        ],),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}


// ignore: must_be_immutable
class AppCard2 extends StatelessWidget {
  String img;
  String label1;
  String label2;
  String label3;
  String label4;
  String label5;
  String label6;
    AppCard2({
    super.key,
    required this.img,
    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4,
    required this.label5,
    required this.label6,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 180,
            height: 255,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.grey
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.all( 10),
                  width: 160,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset(img, fit: BoxFit.fill,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(label1, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(label2, style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 3,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(label3, style: TextStyle(color: const Color(0xFFBDBCBC), fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 75),
                      child: Text(label4, style: TextStyle(color: const Color(0xFFBDBCBC), fontSize: 10),),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(label5, style: TextStyle(color: Colors.grey, fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(label6, style: TextStyle(color: Colors.green, fontSize: 13),),
                    ),
                    SizedBox(width: 32,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(label6, style: TextStyle(color: Colors.grey, fontSize: 13),),
                    ),
                    
                  ],
                ),
                InkWell(
                      onTap: () {
                        Get.toNamed("/PakageDetails");
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColors.first,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.shopping_cart_outlined, size: 17, color: Colors.white,),
                          SizedBox(width: 7,),
                          Text('Add TO Cart', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),)
                        ],),
                      ),
                    ),
              ],
            ),
          );
  }
}



