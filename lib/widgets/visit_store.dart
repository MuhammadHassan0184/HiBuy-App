import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class VisitStore extends StatelessWidget {
  const VisitStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                 padding: EdgeInsets.all(10),
                 margin: EdgeInsets.symmetric(horizontal: 15),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(
                     color: AppColors.grey,
                   ),
                 ),

                 child: LayoutBuilder(
                   builder: (context, constraints) {
               
                     double imgSize = constraints.maxWidth * 0.18;  
                     double buttonWidth = constraints.maxWidth * 0.28; 
               
                     return Row(
                       children: [
                         Container(
                           height: imgSize,
                           width: imgSize,
                           clipBehavior: Clip.antiAlias,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8),
                           ),
                           child: Image.asset("assets/lorem1.png", fit: BoxFit.cover),
                         ),
               
                         SizedBox(width: constraints.maxWidth * 0.03), 
               
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               "Sold by",
                               style: TextStyle(
                                 color: Color(0xFF8A8A8A),
                                 fontSize: constraints.maxWidth * 0.035,
                               ),
                             ),
                             SizedBox(height: 4),
                             Text(
                               "Store Name",
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: constraints.maxWidth * 0.04,
                               ),
                             ),
                             SizedBox(height: 4),
                             Text(
                               "70% Positive Seller Ratings",
                               style: TextStyle(
                                 color: Color(0xFF8A8A8A),
                                 fontSize: constraints.maxWidth * 0.033,
                               ),
                             ),
                           ],
                         ),

                         Spacer(),

                         SizedBox(
                           height: 40,
                           width: buttonWidth,
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(5),
                               ),
                               backgroundColor: AppColors.first,
                             ),
                             onPressed: () {
                               Get.toNamed("/Store");
                             },
                             child: Text(
                               "Visit Store",
                               style: TextStyle(color: Colors.white, fontSize: 12),
                             ),
                           ),
                         ),
                        ],
                        );
                       },
                        ),
                      );
  }
}