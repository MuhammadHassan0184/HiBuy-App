import 'package:get/get_navigation/get_navigation.dart';
import 'package:hibuy/widgets/rating_review.dart';
import 'package:hibuy/widgets/visit_store.dart';
import 'package:hibuy/widgets/textfield.dart';
import 'package:get/instance_manager.dart';
import 'package:hibuy/config/colors.dart';
import 'package:hibuy/widgets/cards.dart';
import 'package:flutter/material.dart';

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
                  Expanded(child: AppTextfield(prefixIcon: Icons.search, lable: "Search Product")),
                  SizedBox(width: 5,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings, size: 30,)),
                ],),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/buds.png", fit: BoxFit.fill,),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  // width: 450,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.grey
                    )
                  ),
                  child: Column(
                    children: [
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
                           // Stars (wrapped in a flexible row)
                          Expanded(
                           flex: 3,
                           child: Wrap(
                              spacing: 4,
                              children: List.generate(
                                5,
                                (index) => Icon(Icons.star, color: Colors.orange, size: 20),
                              ),
                            ),
                          ),
                      
                          // Reviews text
                          Expanded(
                            flex: 3,
                            child: Text(
                              "( 75 Reviews )",
                              style: TextStyle(
                                color: Color(0xFF8A8A8A),
                                fontSize: 14,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),

                          Spacer(), // pushes buttons to the right

                          // Share button
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share, size: 22),
                          ),

                          // Favorite button
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border, size: 25),
                          ),
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
                      // ---------------
                      Theme(
                        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          title: Row(
                        
                          children: [
                            Text("Products Included", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          ],
                        ),
                        children: [
                          Divider(color: AppColors.grey,),
                        ListTile(
                          leading:
                           Container(
                          // width: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("assets/image3.png", fit: BoxFit.fill,),
                        ),
                        title:  Text("Lorem ipsum dolor sit amet.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        subtitle:  Text("Quantity:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_outlined, size: 30,)),
                        ),
                        Divider(color: AppColors.grey,),
                        ListTile(
                          leading:
                           Container(
                          // width: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("assets/image4.png", fit: BoxFit.fill,),
                        ),
                        title:  Text("Lorem ipsum dolor sit amet.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        subtitle:  Text("Quantity:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_outlined, size: 30,)),
                        ),
                        Divider(color: AppColors.grey,),
                        ListTile(
                          leading:
                           Container(
                          // width: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("assets/image2.png", fit: BoxFit.fill,),
                        ),
                        title:  Text("Lorem ipsum dolor sit amet.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        subtitle:  Text("Quantity:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_outlined, size: 30,)),
                        ),
                        ],
                          ),
                      ),
                      
                    ],
                  ),
                ),
                // ------
                SizedBox(height: 15,),
                Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 160,
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
                    InkWell(
                      onTap: () {
                        Get.toNamed("/Buynow");
                      },
                      child: Container(
                        width: 160,
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
                SizedBox(height: 15,),
                // store Name--------------
                VisitStore(),
                // rating Review-------------------
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 15),
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
                          Text("Ratings & Reviews", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          SizedBox(width: 5,),
                          Text("(86)", style: TextStyle(fontSize: 17),),
                          Spacer(),
                          Text("4.3", style: TextStyle(fontSize: 17),),
                          SizedBox(width: 5,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          IconButton(onPressed: (){
                            Get.toNamed("/Review");
                          }, icon: Icon(Icons.arrow_forward_ios, size: 15,))
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
                      RatingReview(),
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
                      RatingReview(),
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
                      RatingReview(),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(horizontal: 15),
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
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text("You might also like", style: TextStyle(fontWeight: FontWeight.bold, fontSize:20),),
                          ],
                        ),
                      ),
                      // ProductGridview----------------
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
          ],
        ),
      ),
    );
  }
}