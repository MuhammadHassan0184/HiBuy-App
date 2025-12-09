import 'package:hibuy/config/colors.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Review",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // review------------------
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 210,
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      progressRating(5, 8000),
                      progressRating(4, 5000),
                      progressRating(3, 5600),
                      progressRating(2, 2500),
                      progressRating(1, 3000),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(color: AppColors.grey),
                    child: Column(
                      children: [
                        Text(
                          "4.3",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(width: 3),
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(width: 3),
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(width: 3),
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(width: 3),
                            Icon(Icons.star, color: Colors.grey),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          "52 Reviews",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                children: [
                  Text(
                    "52 Reviews",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.filter_alt_outlined, size: 27),
                  Text(
                    " Filter:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " All Star",
                    style: TextStyle(
                      color: const Color(0xFF8B8B8B),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  // 1---------------------
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      Spacer(),
                      Text(
                        "20 Dec, 2024",
                        style: TextStyle(
                          color: const Color(0xFF8B8B8B),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "buyerusername",
                        style: TextStyle(
                          color: const Color(0xFF8B8B8B),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. In, iure minus error doloribus saepe natus...",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ),
                  // 2-------------------
                  SizedBox(height: 10),
                  Divider(color: AppColors.grey),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      Spacer(),
                      Text(
                        "20 Dec, 2024",
                        style: TextStyle(
                          color: const Color(0xFF8B8B8B),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "buyerusername",
                        style: TextStyle(
                          color: const Color(0xFF8B8B8B),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. In, iure minus error doloribus saepe natus...",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ),
                  // 3-------------------
                  SizedBox(height: 10),
                  Divider(color: AppColors.grey),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 3),
                      Icon(Icons.star, color: Colors.amber),
                      Spacer(),
                      Text(
                        "20 Dec, 2024",
                        style: TextStyle(
                          color: const Color(0xFF8B8B8B),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "buyerusername",
                        style: TextStyle(
                          color: const Color(0xFF8B8B8B),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. In, iure minus error doloribus saepe natus...",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 70,
                          height: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/2025.png", fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget progressRating(int rate, double progress) {
  double widthSize = 250;
  return Row(
    children: [
      Text(
        rate.toString(),
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(width: 7),
      Icon(Icons.star, color: Colors.amber),
      SizedBox(width: 7),
      SizedBox(
        width: widthSize,
        child: LinearProgressIndicator(
          minHeight: 10,
          borderRadius: BorderRadius.circular(10),
          value: (progress)/20000,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          backgroundColor: Colors.grey.shade300,
        ),
      ),
    ],
  );
}
