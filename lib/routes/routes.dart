


import 'package:get/route_manager.dart';
import 'package:hibuy/routes/routes_name.dart';
import 'package:hibuy/view/home.dart';
import 'package:hibuy/view/login.dart';
import 'package:hibuy/view/pakage_details.dart';
import 'package:hibuy/view/products_sale.dart';
import 'package:hibuy/view/signup.dart';
import 'package:hibuy/view/splash.dart';

class AppRoutes {
  static routes () => [
    GetPage(name: AppRoutesName.splash, page: () => const Splash(),),
    GetPage(name: AppRoutesName.login, page: () => const Login(),),
    GetPage(name: AppRoutesName.signup, page: () => const Signup(),),
    GetPage(name: AppRoutesName.home, page: () => const Home(),),
    GetPage(name: AppRoutesName.productsSale, page: () => const ProductsSale(),),
    GetPage(name: AppRoutesName.pakageDetails, page: () => const PakageDetails(),),
  ];
}