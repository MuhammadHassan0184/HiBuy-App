

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppTextfield extends StatelessWidget {
  final IconData ? icon;
  final String lable;
  
    const AppTextfield({
    super.key,
     this.icon,
    required this.lable,
    }
    );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 450,
            
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(icon, color: Colors.grey, size: 25,),
                hint: Text(lable, style: TextStyle(color: Colors.grey, ),),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5), 
                  borderSide: BorderSide(color: const Color(0xFFE4E2E2),)
                  ),
                
              ),
            ),
          );
  }
}



class VisableTextfield extends StatefulWidget {
  final String label;
  final IconData icon;
  final IconData suicon;
  final String? Function(String?)? validation; // Better type for validator

  const VisableTextfield({
    super.key,
    required this.label,
    required this.icon,
    required this.suicon,
    this.validation,
  });

  @override
  State<VisableTextfield> createState() => _VisableTextfieldState();
}

class _VisableTextfieldState extends State<VisableTextfield> {
  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: TextFormField(
        obscureText: showPass,
        validator: widget.validation, // validation function used here
        decoration: InputDecoration(
          hintText: widget.label, // use widget.label instead of lable
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Icon(widget.icon, color: Colors.grey, size: 25),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                showPass = !showPass;
              });
            },
            icon: Icon(
              showPass ? Icons.visibility_sharp : Icons.visibility_off,
              color: Colors.grey,
              size: 25,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Color(0xFFE4E2E2)),
          ),
        ),
      ),
    );
  }
}


















