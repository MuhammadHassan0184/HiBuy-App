import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';

OutlineInputBorder myinputborderStyle([bool isActive = false]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: isActive ? AppColors.first : AppColors.grey),
  );
}



TextStyle heading18Style(){
  return TextStyle(
            color: AppColors.first,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          );
}