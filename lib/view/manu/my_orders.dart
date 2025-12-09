import 'package:hibuy/widgets/cartbuds.dart';
import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MY Orders", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Card(
                          color: AppColors.first,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
                            child: Text("All", style: TextStyle(color: Colors.white, fontSize: 19),),
                          ),
                        ),
                      ),
                  SizedBox(width: 10,),
                  Orders(label: "In Progress"),
                      SizedBox(width: 10,),
                      Orders(label: "Completed"),
                      SizedBox(width: 10,),
                      Orders(label: "Canceled",)
                ],
              ),
            ),
                      SizedBox(height: 20,),
                      OrdersCard(button: "Completed", color: Colors.green),
                      SizedBox(height: 15,),
                      OrdersCard(button: "Canceled", color: Colors.red),
                      SizedBox(height: 15,),
                      OrdersCard(button: "InProgress", color: Colors.blue),
                      SizedBox(height: 15,),
                      OrdersCard(button: "Completed", color: Colors.green),
                      SizedBox(height: 15,),
                      OrdersCard(button: "Completed", color: Colors.green),
                      SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}


// ignore: must_be_immutable
class Orders extends StatelessWidget {
  String label;
   Orders({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
                      onTap: () {
                        
                      },
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20),
                          side: BorderSide(
                            color: AppColors.grey
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18, right: 18, top: 3, bottom: 3),
                          child: Text(label, style: TextStyle( fontSize: 19, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    );
  }
}