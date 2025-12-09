import 'package:hibuy/widgets/support_card.dart';
import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Us",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 400,
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/aboutUsBanner.png", fit: BoxFit.fill),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ratione, recusandae necessitatibus quasi incidunt alias adipisci pariatur earum iure beatae  assumenda rerum quod. Tempora magni autem a voluptatibus neque.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFF1F1F1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  showStoreAnalyticsInK('Vendors', 0.1),
                  showStoreAnalyticsInK('Customers', 23),
                  showStoreAnalyticsInK('Products', 2),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ratione, recusandae necessitatibus quasi incidunt alias adipisci pariatur earum iure beatae  assumenda rerum quod. Tempora magni autem a voluptatibus neque.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ratione, recusandae necessitatibus quasi incidunt alias adipisci pariatur earum iure beatae  assumenda rerum quod. Tempora magni autem a voluptatibus neque.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                SupportCard(
                  icon: Icons.support_agent_outlined,
                  title: "24X7 Support",
                  msg: "Lorem ipsum dolor sit amet,consectetur adipisicing.",
                ),
                SupportCard(
                  icon: Icons.card_giftcard_rounded,
                  title: "Product Packing",
                  msg: "Lorem ipsum dolor sit amet,consectetur adipisicing.",
                ),
                SizedBox(height: 10),
                SupportCard(
                  icon: Icons.money_off_csred,
                  title: "Payment Secure",
                  msg: "Lorem ipsum dolor sit amet,consectetur adipisicing.",
                ),
                SupportCard(
                  icon: Icons.local_shipping_outlined,
                  title: "Delivery in 5 Days",
                  msg: "Lorem ipsum dolor sit amet,consectetur adipisicing.",
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
//

Widget showStoreAnalyticsInK(String label, double count) {
  return Column(
    children: [
      Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: count.toString(),
                  style: TextStyle(
                    color: AppColors.first,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                TextSpan(
                  text: "k",
                  style: TextStyle(
                    fontFeatures: [FontFeature.superscripts()],
                    color: AppColors.first,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  );
}
