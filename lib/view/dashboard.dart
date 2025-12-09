import 'package:hibuy/view/presentation/products_sale.dart';
import 'package:hibuy/widgets/custom_bottom_bar.dart';
import 'package:hibuy/view/presentation/account.dart';
import 'package:hibuy/view/presentation/home.dart';
import 'package:hibuy/view/presentation/cart.dart';
import 'package:hibuy/view/presentation/chat.dart';
import 'package:flutter/material.dart';

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