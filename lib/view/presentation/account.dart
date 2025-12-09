import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:hibuy/widgets/button.dart';
import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: AppColors.first,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        foregroundImage: AssetImage('assets/myPhoto.jpg'),
                        radius: 34,
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            "Awais Ansari",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "+92 300 1234567",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "email@gmail.com",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit_calendar_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "TheWebConcept   Chenab   Market,  Madina Town Faisalabad",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Accountinfo(
              icon: Icons.person_pin,
              label: "Address Book",
              onPressed: () {},
            ),
            SizedBox(height: 15),
            Accountinfo(
              icon: Icons.shopping_bag,
              label: "My Orders",
              onPressed: () {
                Get.toNamed("/MyOrders");
              },
            ),
            SizedBox(height: 15),
            Accountinfo(
              icon: Icons.reviews,
              label: "My Reviews",
              onPressed: () {
                Get.toNamed("/Review");
              },
            ),
            SizedBox(height: 15),
            Accountinfo(
              icon: Icons.call,
              label: "Contact Us",
              onPressed: () {
                Get.toNamed("/ContactUs");
              },
            ),
            SizedBox(height: 15),
            Accountinfo(
              icon: Icons.info,
              label: "About Us",
              onPressed: () {
                Get.toNamed("/AboutUs");
              },
            ),
            SizedBox(height: 15),
            Accountinfo(
              icon: Icons.support_agent_outlined,
              label: "Support Center",
              onPressed: () {
                Get.toNamed("/SupportCenter");
              },
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Button2(
                label: "Log out",
                onPressed: () {
                  Get.offNamed("/Login");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Accountinfo extends StatelessWidget {
  String label;
  IconData icon;
  VoidCallback onPressed;
  Accountinfo({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        leading: Icon(icon, size: 24,),
        title: Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.arrow_forward_ios, size: 20,),
        ),
      ),
    );
  }
}
