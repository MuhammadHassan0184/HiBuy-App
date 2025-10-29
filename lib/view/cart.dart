import 'package:get/get.dart';
import 'package:hibuy/widgets/cartbuds.dart';
import 'package:hibuy/widgets/button.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline, size: 30,))
              ],
              ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Cartbuds(),
            SizedBox(height: 15,),
            Cartbuds(),
            SizedBox(height: 15,),
            Cartbuds(),
            SizedBox(height: 15,),
            Cartbuds(),
            SizedBox(height: 15,),
            Cartbuds(),
            SizedBox(height: 15,),
            Cartbuds(),
            Cartbuds(),
            SizedBox(height: 15,),
            Cartbuds(),
            Cartbuds(),
            SizedBox(height: 15,),
            Cartbuds(),
            // 
            SizedBox(height: 20,),
            Button2(label: "Check Out", onPressed: (){
              Get.toNamed("/Checkout");
            })
          ],
        ),
      ),
    );
  }
}