import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hibuy/widgets/button.dart';
import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class Selectadress extends StatelessWidget {
  const Selectadress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
              SizedBox(height: 15,),
              NameAndAdress(name: "Awais Ansari", address: "TheWebConcept Chenab Market, Madina Town Faisalabad TheWebConcept Chenab Market,Madina Town Faisalabad", contact: "+92 300 1234567, +92 300 1234567",),
              SizedBox(height: 15,),
              NameAndAdress(name: "Awais Ansari", address: "TheWebConcept Chenab Market, Madina Town Faisalabad TheWebConcept Chenab Market,Madina Town Faisalabad", contact: "+92 300 1234567, +92 300 1234567",),
              SizedBox(height: 15,),
              NameAndAdress(name: "Awais Ansari", address: "TheWebConcept Chenab Market, Madina Town Faisalabad TheWebConcept Chenab Market,Madina Town Faisalabad", contact: "+92 300 1234567, +92 300 1234567",),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Button2(label: "Add New Address +", onPressed: (){
                  Get.toNamed("/Addadress");
                }),
              ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class NameAndAdress extends StatelessWidget {
  String name;
  String address;
  String contact;
   NameAndAdress({super.key, 
   required this.name,
   required this.address,
   required this.contact,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                      Spacer(),
                      IconButton(onPressed: (){Get.toNamed("/Addadress");}, icon: Icon(Icons.edit_calendar_outlined, size: 25,)),
                    ],
                  ),
                  SizedBox(height: 2,),
                  Text(address, style: TextStyle(fontSize: 17),),
                  SizedBox(height: 5,),
                  Text(contact, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                ],
              ),
            );
  }
}