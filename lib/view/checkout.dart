import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hibuy/view/selectadress.dart';
import 'package:hibuy/widgets/cartbuds.dart';
import 'package:hibuy/widgets/button.dart';
import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Check Out", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
              SizedBox(height: 10,),
              CheckOutCard(),
              SizedBox(height: 10,),
              CheckOutCard(),
              SizedBox(height: 15,),
              CheckOutCard(),
              SizedBox(height: 15,),
              CheckOutCard(),
              // 
              NameAndAdress(name: "Awais Ansari", address: "TheWebConcept Chenab Market, Madina Town Faisalabad TheWebConcept Chenab Market,Madina Town Faisalabad", contact: "+92 300 1234567, +92 300 1234567",),
              // 
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
                      SizedBox(height: 10,),
                      Image.asset("assets/giftbox.png"),
                      SizedBox(height: 10,),
                      Text("Thank You!", style: TextStyle(color: AppColors.first, fontWeight: FontWeight.bold, fontSize: 25),),
                      SizedBox(height: 5,),
                      Text("Purchase was successful", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
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
      ),
    );
  }
}