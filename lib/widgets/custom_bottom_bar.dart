import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentPageindex;
  final ValueChanged<int> onTap;
  const CustomBottomBar({
    super.key,
    required this.currentPageindex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPageindex,
      type: BottomNavigationBarType.fixed,
      fixedColor: AppColors.first,
      unselectedItemColor: Colors.grey,
      iconSize: 28,
      unselectedFontSize: 16,
      onTap: onTap, 
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.production_quantity_limits),
          label: "Product",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
      ],
    );
  }
}
