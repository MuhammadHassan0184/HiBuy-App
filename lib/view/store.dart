

import 'package:flutter/material.dart';
import 'package:hibuy/widgets/textfield.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  IconButton(
                    onPressed: (){
                      // Get.offNamed("/Home");
                    }, 
                    icon: Icon(Icons.arrow_back, size: 30,)),
                    SizedBox(width: 5,),
                  SizedBox(
                    width: 370,
                    child: AppTextfield(icon: Icons.search, lable: "Search Product"),
                    ),
                  SizedBox(width: 5,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings, size: 30,)),
                ],),
        ],
      )
    );
  }
}