import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:hibuy/config/colors.dart';

class Cartbuds extends StatefulWidget {
  const Cartbuds({super.key});

  @override
  State<Cartbuds> createState() => _CartbudsState();
}

class _CartbudsState extends State<Cartbuds> {
  bool isAgree = false;
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.grey
                )
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: isAgree, onChanged: (value){
                    setState(() {
                      isAgree = !isAgree;
                    });
                  }),
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
                            Text("Airpods Pro Wireless Earbuds", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                        Text("5.0", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 5,),
                        Text("Color Family: Black, Size/Weight: 2kg", style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.w500, fontSize: 13),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text("Rs. 120.25", style: TextStyle(fontWeight: FontWeight.bold,),),
                            Row(
                        children: [
                          SizedBox(width: 60,),
                          Text("Qty:  ", style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.bold, fontSize: 17),),
                          
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: AppColors.grey
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),
                              onPressed: (){}, 
                              icon: Icon(Icons.remove, size: 10,)),
                          ),
                          SizedBox(width: 10,),
                          Text("2", style: TextStyle(color:const Color(0xFF8A8A8A), fontWeight: FontWeight.w600),),
                          SizedBox(width: 10,),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: AppColors.grey
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),
                              onPressed: (){}, 
                              icon: Icon(Icons.add, size: 10,)),
                          ),
                        ],
                      ),
                          ],
                        ),
                          ],
                        ),
                ],
              ),
            );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.grey
                )
              ),
              child: Row(
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
                            Text("Rs. 120.25", style: TextStyle(fontWeight: FontWeight.bold,),),
                            Row(
                        children: [
                          SizedBox(width: 90,),
                          Text("Qty:  ", style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.bold, fontSize: 17),),
                          
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: AppColors.grey
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),
                              onPressed: (){}, 
                              icon: Icon(Icons.remove, size: 10,)),
                          ),
                          SizedBox(width: 10,),
                          Text("2", style: TextStyle(color:const Color(0xFF8A8A8A), fontWeight: FontWeight.w600),),
                          SizedBox(width: 10,),
                          SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: AppColors.grey
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),
                              onPressed: (){}, 
                              icon: Icon(Icons.add, size: 10,)),
                          ),
                        ],
                      ),
                          ],
                        ),
                          ],
                        ),
                ],
              ),
            );
  }
}



// ignore: must_be_immutable
class OrdersCard extends StatelessWidget {
  String button;
  Color color;
   OrdersCard({super.key, required this.button, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/OrderDetails");
      },
      child: Container(
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
                          child: Text(button, style: TextStyle(color: color),))
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
                  ],
                ),
              ),
    );
  }
}