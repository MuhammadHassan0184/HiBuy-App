import 'package:get/get_navigation/get_navigation.dart';
import 'package:hibuy/widgets/button.dart';
import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class Buynow extends StatelessWidget {
  const Buynow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buy Now", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,),
      body: Column(
        children: [

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
              child: LayoutBuilder(
                builder: (context, constraints) {
                  
                  double imgSize = constraints.maxWidth * 0.25;     // image responsive
                  double titleFont = constraints.maxWidth * 0.05;   // ~20
                  double ratingFont = constraints.maxWidth * 0.05;  // ~20
                  double smallFont = constraints.maxWidth * 0.034;  // ~13
                  double priceFont = constraints.maxWidth * 0.045;
                  double qtyFont = constraints.maxWidth * 0.04;
                  double iconBtnSize = constraints.maxWidth * 0.06; // 21
                  double iconSize = constraints.maxWidth * 0.03;    // 7
                  double gap = constraints.maxWidth * 0.02;
              
                  return Row(
                    children: [
                      // ⭐ Image (responsive)
                      Container(
                        width: imgSize,
                        height: imgSize,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
              "assets/image1.png",
              fit: BoxFit.fill,
                        ),
                      ),
              
                      SizedBox(width: gap),
              
                      // ⭐ Right side column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
              Text(
                "Airpods Pro Wireless Earbuds",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: titleFont,
                ),
              ),
              
              Text(
                "5.0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ratingFont,
                ),
              ),
              SizedBox(height: gap),
              Text(
                "Color Family: Black, Size/Weight: 2kg",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: smallFont,
                ),
              ),
              
              SizedBox(height: gap),
              
              // ⭐ Quantity Row
              Row(
                children: [
                  Text(
                    "Rs. 120.25",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: priceFont,
                    ),
                  ),
              
                  SizedBox(width: 50),
              
                  Text(
                    "Qty:  ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: qtyFont,
                    ),
                  ),
              
                  // Minus Button
                  SizedBox(
                    width: iconBtnSize,
                    height: iconBtnSize,
                    child: IconButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: AppColors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.remove, size: iconSize),
                    ),
                  ),
              
                  SizedBox(width: gap),
              
                  Text(
                    "2",
                    style: TextStyle(
                      color: Color(0xFF8A8A8A),
                      fontWeight: FontWeight.w600,
                      fontSize: qtyFont,
                    ),
                  ),
              
                  SizedBox(width: gap),
              
                  // Plus Button
                  SizedBox(
                    width: iconBtnSize,
                    height: iconBtnSize,
                    child: IconButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: AppColors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.add, size: iconSize),
                    ),
                  ),
                ],
              ),
                        ],
                      ),
                    ],
                  );
                },
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
                      Text("+92 300 1234567, +92 300 1234567", style: TextStyle( fontWeight: FontWeight.bold),),
                      Spacer(),
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
                      Spacer(),
                      Text("Rs. 150", style: TextStyle(fontSize: 17,),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Items Total (1 item)", style: TextStyle(color: Colors.grey ,),),
                      Spacer(),
                      Text("Rs. 829", style: TextStyle(fontSize: 17,),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Total", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text("Rs. 829", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      
                    ],
                  ),
                ],
              ),
            ),
            // 
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Button2(label: "Place Order", onPressed: (){
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
            ),
        ],
      ),
    );
  }
}