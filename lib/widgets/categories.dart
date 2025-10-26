

// ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:hibuy/config/colors.dart';

// class Categories extends StatelessWidget {
//   String img;
//   String label;
//    Categories({super.key, required this.img, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//                 children: [
//                   CircleAvatar(
//                   radius: 30,
//                      child: Container(
//                        decoration: BoxDecoration(
//                          shape: BoxShape.circle,
//                          border: Border.all(
//                            color: AppColors.grey,
//                            width: 2, 
//                          ),
//                        ),
//                        child: const CircleAvatar(
//                          radius: 37, 
//                          backgroundImage: AssetImage(img),
//                        ),
//                      ),
//                      ),
//                      Text(label, style: TextStyle(fontWeight: FontWeight.bold),)
//                 ],
//               );
//   }
// }

import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';

class Categories extends StatelessWidget {
  final String img;
  final String label;

  const Categories({
    super.key,
    required this.img,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            
          },
          child: Container(
            clipBehavior: Clip.antiAlias,
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.grey, 
              ),
            ),
            child: Image.asset(img, fit: BoxFit.fill,),
          ),
        ),
       SizedBox(height: 6),
        Text(label,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ],
    );
  }
}
