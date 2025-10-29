import 'package:hibuy/widgets/custom_bottom_bar.dart';
import 'package:hibuy/view/mainscreens/home.dart';
import 'package:hibuy/view/products_sale.dart';
import 'package:hibuy/view/account.dart';
import 'package:flutter/material.dart';
import 'package:hibuy/view/cart.dart';
import 'package:hibuy/view/chat.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPage = 0;
  final List<Widget> pages = [
    const HomeBody(), 
    const ProductsSale(),
    const Cart(),
    const Chat(),
    const Account(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: CustomBottomBar(
        currentPageindex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}