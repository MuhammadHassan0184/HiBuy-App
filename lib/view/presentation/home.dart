import 'package:get/get_navigation/get_navigation.dart';
import 'package:hibuy/config/models/product_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hibuy/widgets/categories.dart';
import 'package:hibuy/widgets/textfield.dart';
import 'package:get/instance_manager.dart';
import 'package:hibuy/widgets/cards.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          Center(child: Image.asset("assets/homeLogo.png")),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AppTextfield(
                    prefixIcon: Icons.search,
                    lable: "Search Product",
                  ),
                ),
                CustomIconButton(
                  icon: Icons.favorite_border_outlined,
                  onTap: () {
                    Get.toNamed("/Review");
                  },
                ),
                CustomIconButton(
                  icon: Icons.notifications_none_rounded,
                  onTap: () {
                    Get.toNamed("/Notification");
                  },
                ),
              ],
            ),
          ),
          // banner-------------
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: 180,
              autoPlay: true,
              viewportFraction: 1, // full width
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
            ),
            items: [
              // Banner 1
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/homeBanner.png", fit: BoxFit.fill),
              ),

              // Banner 2
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/storebanner.png", fit: BoxFit.fill),
              ),
              // Banner 3
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/shoppingbanner.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: LabelWithAction(label: 'Category', onAction: () {}),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Categories(img: "assets/car.png", label: "Auto Cars"),
                SizedBox(width: 10),
                Categories(
                  img: "assets/construstion.png",
                  label: "Construction",
                ),
                SizedBox(width: 10),
                Categories(img: "assets/education.png", label: "Education"),
                SizedBox(width: 10),
                Categories(img: "assets/electronic.png", label: "Electronic"),
                SizedBox(width: 10),
                Categories(
                  img: "assets/fashion-designer.png",
                  label: "Fashion",
                ),
                SizedBox(width: 10),
                Categories(img: "assets/healthcare.png", label: "Health Care"),
                SizedBox(width: 10),
                Categories(img: "assets/healthcare.png", label: "Health Care"),
                SizedBox(width: 10),
              ],
            ),
          ),
          // latest offer------------------
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: LabelWithAction(label: 'Latest Offers', onAction: () {}),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 220, // Adjust height as needed
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: productsList.length,
              itemBuilder: (context, index) {
                final currentProduct = productsList[index];
                return AppCards(
                  img: currentProduct.img,
                  label1: currentProduct.title,
                  label2: "5.0",
                  label3: currentProduct.storeName,
                  label4: currentProduct.rating,
                  label5: currentProduct.oldPrice,
                  label6: currentProduct.newPrice,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
            ),
          ),

          // popular products-----------
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: LabelWithAction(label: 'Popular Products', onAction: () {}),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 220,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              reverse: true,

              itemCount: productsList.length,
              itemBuilder: (context, index) {
                final currentProduct = productsList[index];
                return AppCards(
                  img: currentProduct.img,
                  label1: currentProduct.title,
                  label2: "",
                  label3: currentProduct.storeName,
                  label4: currentProduct.rating,
                  label5: currentProduct.oldPrice,
                  label6: currentProduct.newPrice,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
            ),
          ),

          SizedBox(height: 20),

          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: LabelWithAction(
              label: 'Monthly Best Sales',
              onAction: () {},
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 260,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              reverse: true,

              itemCount: productsList.length,
              itemBuilder: (context, index) {
                final currentProduct = productsList[index];
                return AppCard2(
                  img: currentProduct.img,
                  label1: currentProduct.title,
                  label2: "",
                  label3: currentProduct.storeName,
                  label4: currentProduct.rating,
                  label5: currentProduct.oldPrice,
                  label6: currentProduct.newPrice,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
            ),
          ),

          SizedBox(height: 20),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 130,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/homeBanner2.png", fit: BoxFit.fill),
          ),
          SizedBox(height: 20),
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
                  mainAxisExtent: 230,
                ),
                itemBuilder: (context, index) {
                  return AppCards(
                    img: "assets/image4.png",
                    label1: 'Airpods Pro Wireless Earbuds',
                    label2: 'Bluetooth 5.0',
                    label3: "By TechDad",
                    label4: "(4.0)",
                    label5: "&32.8",
                    label6: "&28.85",
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  IconData icon;
  VoidCallback onTap;

  CustomIconButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(icon, size: 30, color: Colors.grey),
    );
  }
}

//
// ignore: must_be_immutable
class LabelWithAction extends StatelessWidget {
  String label;
  Function onAction;
  LabelWithAction({super.key, required this.label, required this.onAction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            side: BorderSide(color: const Color(0xFFE4E2E2)),
          ),
          onPressed: () => onAction,
          child: Text(
            "View All",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
