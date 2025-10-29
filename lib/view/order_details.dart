import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 
            SizedBox(height: 10,),
            Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.grey
                    )
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.local_shipping_rounded),
                          SizedBox(width: 10,),
                          Text("Shop Name", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(width: 190,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              side: BorderSide(
                                color: AppColors.grey
                              )
                            ),
                            onPressed: (){}, 
                            child: Text("Complete", style: TextStyle(color: Colors.green),))
                        ],
                      ),
                      Divider(color: AppColors.grey,),
                      Row(
                        children: [
                          Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Image.asset("assets/image1.png", fit: BoxFit.fill,),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Airpods Pro Wireless Earbuds", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                Text("5.0", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                SizedBox(height: 5,),
                                Text("Color Family: Black, Size/Weight: 2kg", style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.w500, fontSize: 13),),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text("Qty:  ", style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.bold, fontSize: 17),),
                                    SizedBox(width: 170,),
                                    Text("Rs. 120.25", style: TextStyle(fontWeight: FontWeight.bold,),),
                                    
                                  ],
                                ),
                                  ],
                                ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            onPressed: (){}, 
                            child: Text("Return Reason", style: TextStyle(color: Colors.white),)
                            ),
                            SizedBox(width: 15,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.first,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            onPressed: (){}, 
                            child: Text("Write Review", style: TextStyle(color: Colors.white),)
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.first,
                          borderRadius: BorderRadius.circular(3)
                        ),
                        child: ListTile(
                          title: Text("#123456", style: TextStyle(color: Colors.white),),
                          subtitle: Text("Product . Order Placed on 25 Dec, 2024 at 3:20 PM", style: TextStyle(color: Colors.white, fontSize: 12),),
                          trailing: Text("Rs: 120.25", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Order expected arrival 01 Jan, 2025", style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Container(
                        height: 10,
                        decoration: BoxDecoration(
                          color: AppColors.first,
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           Column(
                            children: [
                              Icon(Icons.event_note_sharp, size: 30, color: AppColors.first,),
                              SizedBox(height: 5,),
                              Text("Order Placed", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                            ],
                           ),
                           Column(
                            children: [
                              Icon(Icons.drive_folder_upload_outlined, size: 30, color: AppColors.first,),
                              SizedBox(height: 5,),
                              Text("Packaging", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                            ],
                           ),
                           Column(
                            children: [
                              Icon(Icons.local_shipping_outlined, size: 30, color: AppColors.first,),
                              SizedBox(height: 5,),
                              Text("On The Road", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                            ],
                           ),
                           Column(
                            children: [
                              Icon(Icons.delivery_dining_sharp, size: 30, color: AppColors.first,),
                              SizedBox(height: 5,),
                              Text("Out For Delivery", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                            ],
                           ),
                           Column(
                            children: [
                              Icon(Icons.handshake_outlined, size: 30, color: AppColors.first,),
                              SizedBox(height: 5,),
                              Text("Delivered", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                            ],
                           ),
                        ],
                      ),
                      Divider(color: AppColors.grey,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order Activity", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_up_outlined, size: 30,))
                        ],
                      ),
                      OrderActivity(icon: Icons.check, title: "Your order has been delivered. Thank you for shopping at Clicon!", subtitle: "25 Dec, 2024 at 3:20 PM", color: Colors.lightGreen, bgcolor: const Color(0xFFE5EEDA),),
                      SizedBox(height: 10,),
                      OrderActivity(icon: Icons.check, title: "Our delivery man (Name Here) Has picked-up your order for delivery. ", subtitle: "25 Dec, 2024 at 3:20 PM", color: AppColors.first, bgcolor: const Color(0xFFB5DEFF),),
                      SizedBox(height: 10,),
                      OrderActivity(icon: Icons.location_on_outlined, title: "Your order has reached at last mile hub.", subtitle: "25 Dec, 2024 at 3:20 PM", color: AppColors.first, bgcolor: const Color(0xFFB5DEFF),),
                      SizedBox(height: 10,),
                      OrderActivity(icon: Icons.pageview_sharp, title: "Your order on the way to (last mile) hub.", subtitle: "25 Dec, 2024 at 3:20 PM", color: AppColors.first, bgcolor: const Color(0xFFB5DEFF),),
                      SizedBox(height: 10,),
                      OrderActivity(icon: Icons.check, title: "Your order is successfully verified.", subtitle: "25 Dec, 2024 at 3:20 PM", color: Colors.lightGreen, bgcolor: const Color(0xFFE5EEDA),),
                      SizedBox(height: 10,),
                      OrderActivity(icon: Icons.menu_book_sharp, title: "Your order has been confirmed.", subtitle: "25 Dec, 2024 at 3:20 PM", color: AppColors.first, bgcolor: const Color(0xFFB5DEFF),),
                    ],
                  ),
                ),
                // 
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shipping Address", style: TextStyle(fontSize: 20),),
                      Divider(color: AppColors.grey,),
                      Text("Awais Ansari", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      Text("TheWebConcept Chenab Market, Madina Town Faisalabad TheWebConcept Chenab Market, Madina Town Faisalabad", style: TextStyle(fontSize: 16),),
                      SizedBox(height: 5,),
                      Text("+92 300 1234567, +92 300 1234567", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                // 
                SizedBox(height: 15,),
                Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order Summary", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Delivery Fee", style: TextStyle(color: Colors.grey,),),
                        SizedBox(width: 282,),
                        Text("Rs. 150", style: TextStyle(fontSize: 17,),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Items Total (1 item)", style: TextStyle(color: Colors.grey ,),),
                        SizedBox(width: 232,),
                        Text("Rs. 829", style: TextStyle(fontSize: 17,),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Total", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                        SizedBox(width: 320,),
                        Text("Rs. 829", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                        
                      ],
                    ),
                  ],
                ),
              ),
                    SizedBox(height: 20,),
                
          ],
        ),
      ),
    );
  }
}


// ignore: must_be_immutable
class OrderActivity extends StatelessWidget {
  IconData icon;
  String title;
  String subtitle;
  Color color;
  Color bgcolor;
  OrderActivity({super.key,
  required this.icon,
  required this.title,
  required this.subtitle,
  required this.color,
  required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
                        leading: IconButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: bgcolor,
                            side: BorderSide(
                              color: color
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            )
                          ),
                          onPressed: (){}, 
                          icon: Icon(icon, color: color,)
                          ),
                          title: Text(title, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          subtitle: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(subtitle, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),),
                          ),
                      );
  }
}