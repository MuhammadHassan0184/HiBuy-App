
// ignore_for_file: avoid_print

import 'package:hibuy/widgets/loginbutton.dart';
import 'package:hibuy/routes/routes_name.dart';
import 'package:hibuy/widgets/textfield.dart';
import 'package:hibuy/widgets/button.dart';
import 'package:hibuy/config/colors.dart';
import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  double get myscrwidth => MediaQuery.of(context).size.width;
  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150,),
                child: Center(child: Image.asset("assets/loginLoge.png")),
              ),
              SizedBox(height: 15,),
              Text('Welcome to HiBuy', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),),
              SizedBox(height: 10,),
              Text('Sign $myscrwidth', style: TextStyle(color: Colors.grey),),
              Text('Sign in to continue', style: TextStyle(color: Colors.grey),),
              SizedBox(height: 20,),
              SizedBox(height: 10,),
              AppTextfield(prefixIcon: Icons.email, lable: 'Youe Email',),
              SizedBox(height: 10,),
              VisableTextfield(label: "Password", icon: Icons.lock, suicon:Icons.visibility_sharp ),
              SizedBox(height: 15,),          
              Button(lable: "Sign In", 
              onPressed: () {
                Get.toNamed(AppRoutesName.signup);
              }, 
              ),
              SizedBox(height: 15,),
              Text('OR', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 15,),
              Loginbutton(icon: Icons.chrome_reader_mode_outlined, lable: 'Login with Google',),
              SizedBox(height: 15,),
              Loginbutton(icon: Icons.apple, lable: 'Login with Apple'),
              SizedBox(height: 10,),
              TextButton(
                onPressed: (){
                  print("forget password");
                }, 
                child: Text("Forget Password?", style: TextStyle(color: AppColors.first, fontSize: 17, fontWeight: FontWeight.bold),)
                ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account?", style: TextStyle(color: Colors.grey, fontSize: 17,),),
                  TextButton(
                onPressed: (){}, 
                child: Text("Register", style: TextStyle(color: AppColors.first, fontSize: 17, fontWeight: FontWeight.bold),)
                ),
                ],
              )
              
             
               
            ],
          ),
        ),
      ),
    );
  }
}

