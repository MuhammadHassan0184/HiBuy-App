

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:hibuy/config/colors.dart';
import 'package:hibuy/widgets/cards.dart';
import 'package:hibuy/widgets/textfield.dart';

class PakageDetails extends StatelessWidget {
  const PakageDetails({super.key});

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
                      Get.offNamed("/Home");
                    }, 
                    icon: Icon(Icons.arrow_back, size: 30,)),
                    SizedBox(width: 5,),
                  SizedBox(
                    width: 370,
                    child: AppTextfield(icon: Icons.search, lable: "Search Product"),
                    ),
                  SizedBox(width: 5,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings, size: 30,)),
                ],),
                SizedBox(height: 20,),
                Container(
                  width: 450,
                  height: 400,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/buds.png", fit: BoxFit.fill,),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 450,
                  height: 523,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.grey
                    )
                  ),
                  child: Column(
                    children: [
                      // SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Rs. 120.25", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900, fontSize: 22),),
                          SizedBox(width: 13,),
                          Text("&123.25", style: TextStyle(color: const Color(0xFF8A8A8A), fontWeight: FontWeight.bold, fontSize: 19),),
                          SizedBox(width: 10,),
                          Text(" - 35%", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        ],
                      ),
                      Text("Airpods Air Pro 3rd Gen TWS Bluetooth 5.0 Apple", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange,),
                          SizedBox(width: 5,),
                          Icon(Icons.star, color: Colors.orange,),
                          SizedBox(width: 5,),
                          Icon(Icons.star, color: Colors.orange,),
                          SizedBox(width: 5,),
                          Icon(Icons.star, color: Colors.orange,),
                          SizedBox(width: 5,),
                          Icon(Icons.star, color: Colors.orange,),
                          SizedBox(width: 12,),
                          Text("( 75 Review )", style: TextStyle(color: const Color(0xFF8A8A8A)),),
                          SizedBox(width: 95,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.share, size: 25,)),
                          SizedBox(width: 5,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, size: 27,)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Brand:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(width: 10,),
                          Text("Brand Name Here", style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.bold, fontSize: 20),),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        children: [
                          Text("Quantity:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(width: 45,),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: AppColors.grey
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),
                              onPressed: (){}, 
                              icon: Icon(Icons.remove, size: 10,)),
                          ),
                          SizedBox(width: 10,),
                          Text("2", style: TextStyle(color:const Color(0xFF8A8A8A), fontWeight: FontWeight.w600),),
                          SizedBox(width: 10,),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: AppColors.grey
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),
                              onPressed: (){}, 
                              icon: Icon(Icons.add, size: 10,)),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Products Included", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_up_sharp, size: 30,))
                        ],
                      ),
                      Divider(color: AppColors.grey,),
                      Row(
                        
                        children: [
                          Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset("assets/image3.png", fit: BoxFit.fill,),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lorem ipsum dolor sit amet.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Text("Quantity:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(width: 60,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.visibility_outlined, size: 30,))
                        ],
                      ),
                      Divider(color: AppColors.grey,),
                      Row(
                        
                        children: [
                          Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset("assets/image4.png", fit: BoxFit.fill,),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lorem ipsum dolor sit amet.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Text("Quantity:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(width: 60,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.visibility_outlined, size: 30,))
                        ],
                      ),
                      Divider(color: AppColors.grey,),
                      Row(
                        
                        children: [
                          Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset("assets/image2.png", fit: BoxFit.fill,),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lorem ipsum dolor sit amet.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Text("Quantity:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(width: 60,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.visibility_outlined, size: 30,))
                        ],
                      ),
                    ],
                  ),
                ),
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
                        children: [
                          Text("Sold by", style: TextStyle(color: const Color(0xFF8A8A8A), fontSize: 12),),
                          SizedBox(height: 4,),
                          Text("Store Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                          SizedBox(height: 4,),
                          Text("70% Positive Seller Ratings", style: TextStyle(color: const Color(0xFF8A8A8A), fontSize: 12),),
                        ],
                      ),
                      SizedBox(width: 60,),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            backgroundColor: AppColors.first,
                          ),
                          onPressed: (){}, 
                          child: Text("Visit Store", style: TextStyle(color: Colors.white),)
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 450,
                  height: 435,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.grey
                    )
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Ratings & Reviews", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(width: 5,),
                          Text("(86)", style: TextStyle(fontSize: 20),),
                          SizedBox(width: 25,),
                          Text("4.3", style: TextStyle(fontSize: 20),),
                          SizedBox(width: 5,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, size: 20,))
                        ],
                      ),
                      Divider(color: AppColors.grey,),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          SizedBox(width: 12,),
                          Text("buyerusername", style: TextStyle(color: Colors.grey, fontSize: 20),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                           Container(
                            width: 320,
                            height: 70,
                            decoration: BoxDecoration(
                            ),
                            child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. In, iure minus error doloribus saepe natus...", style: TextStyle(fontSize: 17,),),
                           ),
                           SizedBox(width: 25,),
                      Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset("assets/2025.png", fit: BoxFit.fill,),
                      ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Divider(color: AppColors.grey,),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          SizedBox(width: 12,),
                          Text("buyerusername", style: TextStyle(color: Colors.grey, fontSize: 20),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                           Container(
                            width: 320,
                            height: 70,
                            decoration: BoxDecoration(
                            ),
                            child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. In, iure minus error doloribus saepe natus...", style: TextStyle(fontSize: 17,),),
                           ),
                           SizedBox(width: 25,),
                      Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset("assets/2025.png", fit: BoxFit.fill,),
                      ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Divider(color: AppColors.grey,),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          SizedBox(width: 12,),
                          Text("buyerusername", style: TextStyle(color: Colors.grey, fontSize: 20),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                           Container(
                            width: 320,
                            height: 70,
                            decoration: BoxDecoration(
                            ),
                            child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. In, iure minus error doloribus saepe natus...", style: TextStyle(fontSize: 17,),),
                           ),
                           SizedBox(width: 25,),
                      Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset("assets/2025.png", fit: BoxFit.fill,),
                      ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 450,
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.grey
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            SizedBox(height: 7,),
                            Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Error in vero sapiente odio, error dolore vero temporibus consequatur, nobis veniam odit dignissimos consectetur quae in perferendis doloribusdebitis corporis, eaque dicta, repellat amet, illum adipisci vel perferendis dolor! Quis vel consequuntur repellat distinctio rem. Corrupti ratione alias odio,error dolore temporibus consequatur, nobis veniam odit laborum dignissimos consectetur quae vero in perferendis provident quis.", style: TextStyle(color: const Color(0xFF8F8E8E), fontSize: 18),)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 275),
                        child: Text("You might also like", style: TextStyle(fontWeight: FontWeight.bold, fontSize:20),),
                      ),
                      // SizedBox(height: 20,),
                      Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
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
      
            
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 25,),
                            SizedBox(width: 10,),
                            Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 50,),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.first,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 25,),
                            SizedBox(width: 10,),
                            Text("Buy Now", style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}