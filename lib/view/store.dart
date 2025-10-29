

import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';
import 'package:hibuy/widgets/cards.dart';
import 'package:hibuy/widgets/textfield.dart';

class Store extends StatelessWidget {
  const Store({super.key});

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
                    IconButton(
                      onPressed: (){
                        // Get.offNamed("/Home");
                      }, 
                      icon: Icon(Icons.arrow_back, size: 30,)),
                      SizedBox(width: 5,),
                    SizedBox(
                      width: 360,
                      child: AppTextfield(icon: Icons.search, lable: "Search in Store"),
                      ),
                    SizedBox(width: 5,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.settings, size: 30,)),
                  ],),
                  // Store Name-------------
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 450,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.grey,
                      )
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset("assets/lorem1.png", fit: BoxFit.fill,),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Store Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                            SizedBox(height: 7,),
                            Text("70% Positive Seller Ratings", style: TextStyle(color: const Color(0xFF8A8A8A), fontSize: 12),),
                          ],
                        ),
                        SizedBox(width: 130,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.chat_outlined, size: 30,))
                      ],
                    ),
                  ),
                  // Cards-----------
                  SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Card(
                        color: AppColors.first,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25, top: 3, bottom: 3),
                          child: Text("Store", style: TextStyle(color: Colors.white, fontSize: 19),),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
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
                    SizedBox(width: 15,),
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
                          padding: const EdgeInsets.only(left: 25, right: 25, top: 3, bottom: 3),
                          child: Text("Offers", style: TextStyle( fontSize: 19, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    
                  ],
                ),
                // banner------------
                SizedBox(height: 20),
                Container(
                  width: 450,
                  height: 180,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/storeBanner.png", fit: BoxFit.fill,),
                ),
                // latest Offers--------------
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Latest Offers', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),              
                    SizedBox(width: 190),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: const Color(0xFFE4E2E2))
                      ),
                      onPressed: (){}, 
                      child: Text("View All", style: TextStyle( fontSize: 17, fontWeight: FontWeight.bold),),
                      ) 
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      AppCards(img: "assets/image5.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image6.png", label1: 'Smart Watch Pro Waterproof', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image7.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                    ],
                  ),
                ),
                // popular products-----------
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Popular Products', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),              
                    SizedBox(width: 170),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: const Color(0xFFE4E2E2))
                      ),
                      onPressed: (){}, 
                      child: Text("View All", style: TextStyle( fontSize: 17, fontWeight: FontWeight.bold),),
                      ) 
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      AppCards(img: "assets/image5.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image6.png", label1: 'Smart Watch Pro Waterproof', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image7.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                      AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                    ],
                  ),
                ),
                // Store Cards Banner---------
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 220,
                      height: 220,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset("assets/storeBannerCard1.png", fit: BoxFit.fill,),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 220,
                      height: 220,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset("assets/storeBannerCard2.png", fit: BoxFit.fill,),
                    ),
                  ],
                ),

                // productsGridview----------
                Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      maxCrossAxisExtent: 300,
                      mainAxisExtent: 230
                      ), 
                    itemBuilder: (context, index){
                      return AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" );
                    }),
                ),
              ),
          ],
        ),
      )
    );
  }
}