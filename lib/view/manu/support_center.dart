import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class SupportCenter extends StatelessWidget {
  const SupportCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Support Center", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)), centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text("Top Questions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                ],
              ),
            ),
            // 
            SizedBox(height: 10,),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text("Lorem ipsum, dolor sit amet consectetur adipisici?", 
                          softWrap: true,
                          style: TextStyle(                          
                          fontSize: 15,  
                          fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    children: [
                    Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ratione, recusandae necessitatibus quasi incidunt alias adipisci pariatur earum iure beatae  assumenda rerum quod. Tempora magni autem a voluptatibus neque.", style: TextStyle(color: const Color(0xFF8D8D8D)),),
                    ],
                      ),
                  ),
                  Divider(color: AppColors.grey,),
                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text("Lorem ipsum, dolor sit amet consectetur adipisici?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),)),
                          //  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined)),
                        ],
                      ),
                    ),
                  ),
                  Divider(color: AppColors.grey,),
                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text("Lorem ipsum, dolor sit amet consectetur adipisici?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),)),
                          //  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined)),
                        ],
                      ),
                    ),
                  ),
                  Divider(color: AppColors.grey,),
                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text("Lorem ipsum, dolor sit amet consectetur adipisici?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),)),
                          //  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined)),
                        ],
                      ),
                    ),
                  ),
                  Divider(color: AppColors.grey,),
                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text("Lorem ipsum, dolor sit amet consectetur adipisici?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),)),
                          //  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined)),
                        ],
                      ),
                    ),
                  ),
                  Divider(color: AppColors.grey,),
                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text("Lorem ipsum, dolor sit amet consectetur adipisici?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),)),
                          //  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text("Categories", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Promotions", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_outlined)),
                    ],
                  ),
                  Divider(color: AppColors.grey,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Account Management", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_outlined)),
                    ],
                  ),
                  Divider(color: AppColors.grey,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Categories", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_outlined)),
                    ],
                  ),
                  Divider(color: AppColors.grey,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Orders", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_outlined)),
                    ],
                  ),
                  Divider(color: AppColors.grey,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Categories", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_outlined)),
                    ],
                  ),
                  Divider(color: AppColors.grey,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payments", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_outlined)),
                    ],
                  ),
                  Divider(color: AppColors.grey,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Returns & Refunds", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_outlined)),
                    ],
                  ),
                  Divider(color: AppColors.grey,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sell on", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_outlined)),
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