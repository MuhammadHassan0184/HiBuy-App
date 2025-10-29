import 'package:hibuy/view/notification_promo.dart';
import 'package:hibuy/view/pakage_details.dart';
import 'package:hibuy/view/support_center.dart';
import 'package:hibuy/view/order_details.dart';
import 'package:hibuy/routes/routes_name.dart';
import 'package:hibuy/view/products_sale.dart';
import 'package:hibuy/view/selectadress.dart';
import 'package:hibuy/view/notification.dart';
import 'package:hibuy/view/contact_us.dart';
import 'package:hibuy/view/dashboard.dart';
import 'package:hibuy/view/addadress.dart';
import 'package:hibuy/view/my_orders.dart';
import 'package:hibuy/view/about_us.dart';
import 'package:hibuy/view/checkout.dart';
import 'package:hibuy/view/account.dart';
import 'package:get/route_manager.dart';
import 'package:hibuy/view/review.dart';
import 'package:hibuy/view/signup.dart';
import 'package:hibuy/view/splash.dart';
import 'package:hibuy/view/buynow.dart';
import 'package:hibuy/view/login.dart';
import 'package:hibuy/view/store.dart';
import 'package:hibuy/view/chat.dart';
import 'package:hibuy/view/cart.dart';

class AppRoutes {
  static routes () => [
    GetPage(name: AppRoutesName.splash, page: () => const Splash(),),
    GetPage(name: AppRoutesName.login, page: () => const Login(),),
    GetPage(name: AppRoutesName.signup, page: () => const Signup(),),
    GetPage(name: AppRoutesName.home, page: () => const Dashboard(),),
    GetPage(name: AppRoutesName.productsSale, page: () => const ProductsSale(),),
    GetPage(name: AppRoutesName.pakageDetails, page: () => const PakageDetails(),),
    GetPage(name: AppRoutesName.store, page: () => const Store(),),
    GetPage(name: AppRoutesName.review, page: () => const Review(),),
    GetPage(name: AppRoutesName.buynow, page: () => const Buynow(),),
    GetPage(name: AppRoutesName.selectadress, page: () => const Selectadress(),),
    GetPage(name: AppRoutesName.addadress, page: () => const Addadress(),),
    GetPage(name: AppRoutesName.cart, page: () => const Cart(),),
    GetPage(name: AppRoutesName.checkout, page: () => const Checkout(),),
    GetPage(name: AppRoutesName.notification, page: () => const Notification(),),
    GetPage(name: AppRoutesName.notificationPromo, page: () => const NotificationPromo(),),
    GetPage(name: AppRoutesName.chat, page: () => const Chat(),),
    GetPage(name: AppRoutesName.account, page: () => const Account(),),
    GetPage(name: AppRoutesName.myOrders, page: () => const MyOrders(),),
    GetPage(name: AppRoutesName.orderDetails, page: () => const OrderDetails(),),
    GetPage(name: AppRoutesName.contactUs, page: () => const ContactUs(),),
    GetPage(name: AppRoutesName.aboutUs, page: () => const AboutUs(),),
    GetPage(name: AppRoutesName.supportCenter, page: () => const SupportCenter(),),
  ];
}