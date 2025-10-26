
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:hibuy/config/colors.dart';
import 'package:hibuy/widgets/button.dart';
import 'package:hibuy/widgets/loginbutton.dart';
import 'package:hibuy/widgets/textfield.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 110,),
          Center(child: Image.asset("assets/signupLogo.png")),
          SizedBox(height: 15,),
          Text('Let’s Get Started', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),),
          SizedBox(height: 10,),
          Text('Create an account', style: TextStyle(color: Colors.grey),),
          SizedBox(height: 20,),
          AppTextfield(icon: Icons.person, lable: "Full Name"),
          SizedBox(height: 10,),
          AppTextfield(icon: Icons.email, lable: "Your Email"),
          SizedBox(height: 10,),
          VisableTextfield(label: "Password", icon: Icons.lock, suicon:Icons.visibility_sharp ),
          SizedBox(height: 10,),
          VisableTextfield(label: "Re-Enter Password", icon: Icons.lock, suicon:Icons.visibility_sharp ),
          SizedBox(height: 15,),
             Button(lable: "Sign Up", onPressed: (){
              Get.toNamed("/Home");
             }),
          SizedBox(height: 15,),
          Text('OR', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 15,),
          Loginbutton(icon: Icons.chrome_reader_mode_outlined, lable: 'Sign Up with Google'),
          SizedBox(height: 15,),
          Loginbutton(icon: Icons.apple, lable: 'Sign Up with Apple'),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Have an account?", style: TextStyle(color: Colors.grey, fontSize: 17,),),
              TextButton(
            onPressed: (){
              Get.offNamed("/login");
            }, 
            child: Text("Sign Up", style: TextStyle(color: AppColors.first, fontSize: 17, fontWeight: FontWeight.bold),)
            ),
            ],
          )
          
         
           
        ],
      ),
    );
  }
}