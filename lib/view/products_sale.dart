

import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';
import 'package:hibuy/view/mainscreens/home.dart';
import 'package:hibuy/widgets/cards.dart';
import 'package:hibuy/widgets/textfield.dart';

class ProductsSale extends StatelessWidget {
  const ProductsSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(child: IconButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: AppColors.grey
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    ),
                  ),
                  onPressed: (){}, 
                  icon: Icon(Icons.menu, size: 30, color: Colors.grey,))),
                  SizedBox(width: 10,),
                SizedBox(
                  width: 300,
                  child: AppTextfield(icon: Icons.search, lable: "Search Product"),
                  ),
                SizedBox(width: 5,),
                CustomIconButton(icon: Icons.switch_access_shortcut_add_outlined, onTap: (){}),
                CustomIconButton(icon: Icons.filter_alt_outlined, onTap: (){}),
              ],),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                        side: BorderSide(
                          color: AppColors.grey
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18, top: 3, bottom: 3),
                        child: Text("Popular Products", style: TextStyle( fontSize: 19, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                        side: BorderSide(
                          color: AppColors.grey
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18, top: 3, bottom: 3),
                        child: Text("Offers", style: TextStyle( fontSize: 19, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Card(
                      color: AppColors.first,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
                        child: Text("Best Sales", style: TextStyle(color: Colors.white, fontSize: 19),),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      maxCrossAxisExtent: 340,
                      mainAxisExtent: 260
                      ), 
                    itemBuilder: (context, index){
                      return AppCard2(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" );
                    }),
                ),
              ),
              
          ],
        ),
      ),
    );
  }
}