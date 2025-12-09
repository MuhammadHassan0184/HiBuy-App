import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hibuy/view/auth/splash.dart';
import 'package:hibuy/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: Splash(),
      // home: Login(),
      // home: Signup(),
      // home: Home(),
      // home: ProductsSale(),
      // home: PakageDetails(),
      // home: Store(),
      // home: Review(),
      // home: Buynow(),
      // home: Selectadress(),
      // home: Addadress(),
      // home: Cart(),
      // home: Checkout(),
      // home: Notification(),
      // home: NotificationPromo(),
      // home: Chat(),
      // home: Account(),
      // home: MyOrders(),
      // home: OrderDetails(),
      // home: ContactUs(),
      // home: AboutUs(),
      // home: SupportCenter(),

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      getPages: AppRoutes.routes(),
    );
  }
}


