

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:hibuy/config/colors.dart';
import 'package:hibuy/widgets/button.dart';

class Buynow extends StatelessWidget {
  const Buynow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buy Now", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,),
      body: Column(
        children: [
          // SizedBox(height: 10,),
          //   Padding(
          //     padding: const EdgeInsets.all(10),
          //     child: Row(
          //       children: [
          //         IconButton(
          //                 onPressed: (){
          //                   // Get.offNamed("/Home");
          //                 }, 
          //                 icon: Icon(Icons.arrow_back, size: 30,)
          //                 ),
          //                 SizedBox(width: 160,),
          //                 Text("Buy Now", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
          //       ],
          //     ),
          //   ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.grey
                )
              ),
              child: Row(
                children: [
                  Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("assets/image1.png", fit: BoxFit.fill,),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Airpods Pro Wireless Earbuds", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text("5.0", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        SizedBox(height: 5,),
                        Text("Color Family: Black, Size/Weight: 2kg", style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.w500, fontSize: 13),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text("Rs. 120.25", style: TextStyle(fontWeight: FontWeight.bold,),),
                            Row(
                        children: [
                          SizedBox(width: 90,),
                          Text("Qty:  ", style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.bold, fontSize: 17),),
                          
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: AppColors.grey
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),
                              onPressed: (){}, 
                              icon: Icon(Icons.remove, size: 10,)),
                          ),
                          SizedBox(width: 10,),
                          Text("2", style: TextStyle(color:const Color(0xFF8A8A8A), fontWeight: FontWeight.w600),),
                          SizedBox(width: 10,),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: AppColors.grey
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),
                              onPressed: (){}, 
                              icon: Icon(Icons.add, size: 10,)),
                          ),
                        ],
                      ),
                          ],
                        ),
                          ],
                        ),
                ],
              ),
            ),
            // Awais ansari-------------------
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Awais Ansari", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                  SizedBox(height: 2,),
                  Text("TheWebConcept Chenab Market, Madina Town Faisalabad TheWebConcept Chenab Market,Madina Town Faisalabad", style: TextStyle(fontSize: 17),),
                  Row(
                    children: [
                      Text("+92 300 1234567, +92 300 1234567", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      SizedBox(width: 100,),
                      IconButton(onPressed: (){
                        Get.toNamed("/Selectadress");
                      }, icon: Icon(Icons.arrow_forward_ios, size: 20,)),
                    ],
                  ),
                ],
              ),
            ),
            // Order summary-----------------
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order Summary", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Delivery Fee", style: TextStyle(color: Colors.grey,),),
                      SizedBox(width: 282,),
                      Text("Rs. 150", style: TextStyle(fontSize: 17,),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Items Total (1 item)", style: TextStyle(color: Colors.grey ,),),
                      SizedBox(width: 232,),
                      Text("Rs. 829", style: TextStyle(fontSize: 17,),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Total", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      SizedBox(width: 320,),
                      Text("Rs. 829", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      
                    ],
                  ),
                ],
              ),
            ),
            // 
            SizedBox(height: 20,),
            Button2(label: "Place Order", onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  backgroundColor: Colors.white,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.first,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(100)
                            ),
                            side: BorderSide(
                              color: AppColors.first
                            )
                          ),
                          onPressed: (){}, icon: Icon(Icons.check, color: Colors.white,),),
                      ),
                      SizedBox(height: 10,),
                      Text("Thank You!", style: TextStyle(color: AppColors.first, fontWeight: FontWeight.bold, fontSize: 25),),
                      SizedBox(height: 5,),
                      Text("Purchase was successful", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                      Image.asset("assets/giftbox.png")
                    ],
                  ),
                  actions: [
                    SizedBox(
                      width: 250,
                      child: Button2(label: "Continue Shopping", onPressed: (){
                        Get.offNamed("/Store");
                      },))
                  ],
                  
                );
              });
            }),
        ],
      ),
    );
  }
}