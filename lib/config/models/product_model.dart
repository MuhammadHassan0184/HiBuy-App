
class ProductModel {
  final String img;
  final String title;
  final String storeName;
  final String rating;
  final String oldPrice;
  final String newPrice;

  ProductModel({
    required this.img,
    required this.title,
    required this.storeName,
    required this.rating,
    required this.oldPrice,
    required this.newPrice,
  });
}


// 

final List<ProductModel> productsList = [
  // 🟦 image1.png
  ProductModel(
    img: "assets/image1.png",
    title: 'Airpods Pro Wireless Earbuds',
    storeName: "By TechDad",
    rating: "(4.5)",
    oldPrice: "&35.0",
    newPrice: "&29.9",
  ),

  // 🟦 image2.png
  ProductModel(
    img: "assets/image2.png",
    title: 'Smart Watch Pro Waterproof',
    storeName: "By Watchify",
    rating: "(4.3)",
    oldPrice: "&50.0",
    newPrice: "&42.5",
  ),

  // 🟦 image3.png
  ProductModel(
    img: "assets/image3.png",
    title: 'Comfort Bed Shoes',
    storeName: "By SoftWalk",
    rating: "(4.1)",
    oldPrice: "&28.0",
    newPrice: "&21.5",
  ),

  // 🟦 image4.png
  ProductModel(                                             
    img: "assets/image4.png",                           
    title: 'Winter Jacket & Trouser Set',                                      
    storeName: "By UrbanWear",
    rating: "(4.6)",
    oldPrice: "&95.0",
    newPrice: "&82.9",
  ),

  // 🟦 image5.png
  ProductModel(
    img: "assets/image5.png",
    title: 'Men’s Classic Trouser',
    storeName: "By TrendyFit",
    rating: "(4.0)",
    oldPrice: "&40.0",
    newPrice: "&32.9",
  ),

  // 🟦 image6.png
  ProductModel(
    img: "assets/image6.png",
    title: 'Laptop Backpack 15-inch',
    storeName: "By BagWorld",
    rating: "(4.7)",
    oldPrice: "&55.0",
    newPrice: "&46.5",
  ),


  // 🟦 image7.png
  ProductModel(
    img: "assets/image7.png",
    title: 'Luxury Collection Box',
    storeName: "By GiftPro",
    rating: "(4.8)",
    oldPrice: "&60.0",
    newPrice: "&52.9",
  ),




    ProductModel(
    img: "assets/image1.png",
    title: 'Airpods Lite Edition',
    storeName: "By SoundMax",
    rating: "(4.2)",
    oldPrice: "&30.0",
    newPrice: "&24.5",
  ),

  ProductModel(
    img: "assets/image2.png",
    title: 'Digital Fitness Watch',
    storeName: "By FitZone",
    rating: "(4.0)",
    oldPrice: "&48.0",
    newPrice: "&39.9",
  ),

  ProductModel(
    img: "assets/image3.png",
    title: 'SleepyWear Indoor Shoes',
    storeName: "By DreamFeet",
    rating: "(4.4)",
    oldPrice: "&26.5",
    newPrice: "&19.9",
  ),

  ProductModel(
    img: "assets/image4.png",
    title: 'Casual Jacket & Track Pant',
    storeName: "By CoolStyle",
    rating: "(4.3)",
    oldPrice: "&88.0",
    newPrice: "&76.5",
  ),
  ProductModel(
    img: "assets/image5.png",
    title: 'Slim Fit Cotton Trouser',
    storeName: "By StyleHub",
    rating: "(4.4)",
    oldPrice: "&38.5",
    newPrice: "&30.5",
  ),
  ProductModel(
    img: "assets/image6.png",
    title: 'Travel Laptop Bag',
    storeName: "By CarryOn",
    rating: "(4.5)",
    oldPrice: "&52.0",
    newPrice: "&44.9",
  ),
  ProductModel(
    img: "assets/image7.png",
    title: 'Premium Accessory Box',
    storeName: "By EliteStore",
    rating: "(4.6)",
    oldPrice: "&58.0",
    newPrice: "&49.9",
  ),
];
