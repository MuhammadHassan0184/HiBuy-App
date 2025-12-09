import 'package:flutter/widgets.dart';

class RatingReview extends StatelessWidget {
  const RatingReview({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
  builder: (context, constraints) {
    double textWidth = constraints.maxWidth * 0.70;   
    double textFont = constraints.maxWidth * 0.04;   
    double imageSize = constraints.maxWidth * 0.18;  
    double gap = constraints.maxWidth * 0.04;          

    return 
    Row(
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          width: textWidth,
          height: imageSize,
          child: Text(
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. In, iure minus error doloribus saepe natus...",
            style: TextStyle(fontSize: textFont),
          ),
        ),

        SizedBox(width: gap),

        Container(
          width: imageSize,
          height: imageSize,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            "assets/2025.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  },
);
  }
}