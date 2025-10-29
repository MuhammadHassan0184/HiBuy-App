
import 'package:flutter/material.dart';
import 'package:hibuy/config/colors.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentPageindex;
  final ValueChanged<int> onTap; // <-- callback function

  const CustomBottomBar({
    super.key,
    required this.currentPageindex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: AppColors.first,
      unselectedItemColor: Colors.grey,
      unselectedFontSize: 17,
      iconSize: 40,
      currentIndex: currentPageindex,
      onTap: onTap, // 👈 use callback here
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
