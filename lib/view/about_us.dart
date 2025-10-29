import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';
import 'package:hibuy/widgets/support_card.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Us", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
              Container(
                height: 400,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/aboutUsBanner.png", fit: BoxFit.fill,),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ratione, recusandae necessitatibus quasi incidunt alias adipisci pariatur earum iure beatae  assumenda rerum quod. Tempora magni autem a voluptatibus neque.", style: TextStyle(fontSize: 16),),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color:Color(0xFFF1F1F1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("0.1", style: TextStyle(color: AppColors.first, fontWeight: FontWeight.bold, fontSize: 30),),
                            Text("k", style: TextStyle(color: AppColors.first, fontWeight: FontWeight.bold, fontSize: 20),),
                          ],
                        ),
                        Text("Vendors", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("23", style: TextStyle(color: AppColors.first, fontWeight: FontWeight.bold, fontSize: 30),),
                            Text("k", style: TextStyle(color: AppColors.first, fontWeight: FontWeight.bold, fontSize: 20),),
                          ],
                        ),
                        Text("Customers", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("2", style: TextStyle(color: AppColors.first, fontWeight: FontWeight.bold, fontSize: 30),),
                            Text("k", style: TextStyle(color: AppColors.first, fontWeight: FontWeight.bold, fontSize: 20),),
                          ],
                        ),
                        Text("Products", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ratione, recusandae necessitatibus quasi incidunt alias adipisci pariatur earum iure beatae  assumenda rerum quod. Tempora magni autem a voluptatibus neque.", style: TextStyle(fontSize: 16),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ratione, recusandae necessitatibus quasi incidunt alias adipisci pariatur earum iure beatae  assumenda rerum quod. Tempora magni autem a voluptatibus neque.", style: TextStyle(fontSize: 16),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SupportCard(icon: Icons.support_agent_outlined, title: "24X7 Support", msg: "Lorem ipsum dolor sit amet,consectetur adipisicing."),
                  SupportCard(icon: Icons.card_giftcard_rounded, title: "Product Packing", msg: "Lorem ipsum dolor sit amet,consectetur adipisicing."),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SupportCard(icon: Icons.money_off_csred, title: "Payment Secure", msg: "Lorem ipsum dolor sit amet,consectetur adipisicing."),
                  SupportCard(icon: Icons.local_shipping_outlined, title: "Delivery in 5 Days", msg: "Lorem ipsum dolor sit amet,consectetur adipisicing."),
                ],
              ),
              SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
