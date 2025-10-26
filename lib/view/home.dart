


import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hibuy/config/colors.dart';
import 'package:hibuy/view/products_sale.dart';
import 'package:hibuy/widgets/cards.dart';
import 'package:hibuy/widgets/categories.dart';

import 'package:hibuy/widgets/textfield.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;

  final List<Widget> pages = [
    const HomeBody(), 
    const ProductsSale(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: pages[currentPage],  
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColors.first,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 17,
        iconSize: 40,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: "Product",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Center(child: Image.asset("assets/homeLogo.png")),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(
                  width: 350,
                  child: AppTextfield(icon: Icons.search, lable: "Search Product")
                  ),
                SizedBox(width: 5,),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined, size: 30, color: Colors.grey,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_rounded, size: 35, color: Colors.grey,)),
                
              ],),
              SizedBox(height: 20,),
              Container(
                width: 450,
                height: 180,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/homeBanner.png", fit: BoxFit.fill,),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Category', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),              
                  SizedBox(width: 220),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: const Color(0xFFE4E2E2)),
                    ),
                    onPressed: (){}, 
                    child: Text("View All", style: TextStyle( fontSize: 17, fontWeight: FontWeight.bold),),
                    ) 
                ],
              ),
          
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Categories(img: "assets/car.png", label: "Auto Cars"),
                  SizedBox(width: 10,),
                  Categories(img: "assets/construstion.png", label: "Construction"),
                  SizedBox(width: 10,),
                  Categories(img: "assets/education.png", label: "Education"),
                  SizedBox(width: 10,),
                  Categories(img: "assets/electronic.png", label: "Electronic"),
                  SizedBox(width: 10,),
                  Categories(img: "assets/fashion-designer.png", label: "Fashion"),
                  SizedBox(width: 10,),
                  Categories(img: "assets/healthcare.png", label: "Health Care"),
                ],
              ),
              SizedBox(height: 25,),
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
                    AppCards(img: "assets/image1.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                    SizedBox(width: 15,),
                    AppCards(img: "assets/image2.png", label1: 'Smart Watch Pro Waterproof', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                    SizedBox(width: 15,),
                    AppCards(img: "assets/image3.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                    SizedBox(width: 15,),
                    AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                    SizedBox(width: 15,),
                    AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                    SizedBox(width: 15,),
                    AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                  ],
                ),
              ),
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
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Monthly Best Sales', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),              
                  SizedBox(width: 170),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: const Color(0xFFE4E2E2))
                    ),
                    onPressed: (){}, 
                    child: Text("View All", style: TextStyle( fontSize: 17, fontWeight: FontWeight.bold),),
                    ),
                ],
              ),
        
              SizedBox(height: 20,),
              SingleChildScrollView(
                padding: EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                     AppCard2(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                     AppCard2(img: "assets/image7.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                     AppCard2(img: "assets/image6.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                     AppCard2(img: "assets/image1.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                     AppCard2(img: "assets/image2.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                      SizedBox(width: 15,),
                     AppCard2(img: "assets/image3.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" ),
                  ],
                ),  
              ),
              SizedBox(height: 20,),
              Container(
                width: 450,
                height: 130,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/homeBanner2.png", fit: BoxFit.fill,),
              ),
              SizedBox(height: 20,),
              // grid view after image 
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
                      mainAxisExtent: 230
                      ), 
                    itemBuilder: (context, index){
                      return AppCards(img: "assets/image4.png", label1: 'Airpods Pro Wireless Earbuds', label2: 'Bluetooth 5.0', label3: "By TechDad", label4: "(4.0)", label5: "&32.8", label6:"&28.85" );
                    }),
                ),
              ),
        
        
             
            ],
          ),
        );
  }
}

