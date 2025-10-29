import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hibuy/widgets/textfield.dart';
import 'package:hibuy/widgets/button.dart';
import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class Addadress extends StatefulWidget {
  const Addadress({super.key});

  @override
  State<Addadress> createState() => _AddadressState();
}

class _AddadressState extends State<Addadress> {
  bool isAgree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //
            SizedBox(height: 10,),
            titles(label: "First Name"),
            SizedBox(height: 15,),
            AppTextfield(lable: "Enter First Name",),
            // 
            SizedBox(height: 15,),
            titles(label: "Last Name"),
            SizedBox(height: 15,),
            AppTextfield(lable: "Enter Last Name",),
            // 
            SizedBox(height: 15,),
            titles(label: "City"),
            SizedBox(height: 15,),
            AppTextfield(lable: "Select City",),
            // 
            SizedBox(height: 15,),
            titles(label: "Province"),
            SizedBox(height: 15,),
            AppTextfield(lable: "Select Province",),
            // 
            SizedBox(height: 15,),
            titles(label: "Area"),
            SizedBox(height: 15,),
            AppTextfield(lable: "Select Area",),
            // 
            SizedBox(height: 15,),
            titles(label: "Postal Code"),
            SizedBox(height: 15,),
            AppTextfield(lable: "Enter Postal Code",),
            // 
            SizedBox(height: 15,),
            titles(label: "Phone Number"),
            SizedBox(height: 15,),
            AppTextfield(lable: "Enter Phone Number",),
            // 
            SizedBox(height: 15,),
            titles(label: "Second Phone Number (Optional)"),
            SizedBox(height: 15,),
            AppTextfield(lable: "Enter Phone Number",),
            // 
            SizedBox(height: 15,),
            titles(label: "Address"),
            SizedBox(height: 15,),
            AppTextfield(lable: "Address Line",),
            // 
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(10),
              width: 450,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Set as Default Shipping Address", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Checkbox(value: isAgree, onChanged: (value){
                    setState(() {
                      isAgree = !isAgree;
                    });
                  }),
                ],
              ),
            ),
            // 
            SizedBox(height: 15,),
            Button2(label: "Add", onPressed: (){
              Get.offNamed("/Selectadress");
            }),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class titles extends StatelessWidget {
  String label;
   titles({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              SizedBox(width: 25,),
              Text(label, style: TextStyle(fontSize: 19),),
            ],
          );
  }
}