import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';
import 'package:hibuy/view/addadress.dart';
import 'package:hibuy/widgets/button.dart';
import 'package:hibuy/widgets/textfield.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Us", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              height: 500,
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.amber
              ),
              child: Image.asset("assets/map.png", fit: BoxFit.fill,),
            ),
            // 
            SizedBox(height: 10,),
            Text("Any Question ?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            // 
            SizedBox(height: 10,),
            titles(label: "Name"),
              SizedBox(height: 10,),
              AppTextfield(lable: "Buyer Name",),
              // 
            SizedBox(height: 10,),
            titles(label: "Email"),
              SizedBox(height: 10,),
              AppTextfield(lable: "buyer@gmail.com",),
              // 
            SizedBox(height: 10,),
            titles(label: "Message"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: 450,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                maxLines:4,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hint: Text("Enter Here...", style: TextStyle(color: Colors.grey, fontSize: 20),),
                ),
              ),
            ),
            // 
            SizedBox(height: 20,),
            Button2(label: "Send Message", onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  backgroundColor: Colors.white,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 10,),
                      Text("Message Sent!", style: TextStyle(color: AppColors.first, fontWeight: FontWeight.bold, fontSize: 25),),
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
                );
              });
            }),
          ],
        ),
      ),
    );
  }
}