import 'package:flutter/material.dart';

class Product {
  final String? image;
  final String? title;
  final String? description;
  final int? price;
  final int? size;
  final int? id;
  final Color? color;
  final String? category;

  const Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
    this.category,
  });
}

List<Product> hand = [
  Product(
      id: 1,
      title: "حقيبه 1",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "حقيبه 2",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "حقيبه 3",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "حقيبه 4",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "حقيبه 5",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
      title: "حقيبه 6",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

List<Product> dress = [
  Product(
      id: 1,
      title: "فستان 1",
      price: 234,
      size: 12,
      description: dummyText,
      image:
          "assets/images/dress/dress3-removebg-preview.png",
      color: Color.fromARGB(255, 219, 77, 67)),
  
  Product(
      id: 5,
      title: "فستان 5",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/dress/images-removebg-preview.png",
      color: Color(0xFFFB7883)),
 
];

List<Product> ex = [
  Product(
      id: 1,
      title: "ماوس ",
      price: 234,
      size: 12,
      description: dummyText,
      image:
          "assets/images/pc/mouse-removebg-preview.png",
      color: Color.fromARGB(255, 196, 193, 193)),
  
  Product(
      id: 5,
      title: "كيبورد ",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/pc/download-removebg-preview (2).png",
      color: Color.fromARGB(255, 236, 222, 223)),
 
];


List<Product> laptop = [
  Product(
      id: 1,
      title: "لابتوب 1",
      price: 234,
      size: 12,
      description: dummyText,
      image:
          "assets/images/pc/dell-removebg-preview.png",
      color: Color.fromARGB(255, 128, 203, 247)),
  
  Product(
      id: 5,
      title: "لابتوب 2",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/pc/download-removebg-preview.png",
      color: Color.fromARGB(255, 94, 96, 185)),
 
];


List<Product> jacket = [
  Product(
      id: 1,
      title: "جاكيت 1",
      price: 234,
      size: 12,
      description: jackettext,
      image:
          "assets/images/jacket/jacket-removebg-preview.png",
      color: Color.fromARGB(255, 45, 47, 48)),
  
  Product(
      id: 5,
      title: "جاكيت 2",
      price: 234,
      size: 12,
      description: jackettext,
      image: "assets/images/jacket/jacket2-removebg-preview.png",
      color: Color.fromARGB(255, 200, 200, 218)),
 
];

List<Product> shirt = [
  Product(
      id: 1,
      title: "قميص 1",
      price: 234,
      size: 12,
      description: jackettext,
      image:
          "assets/images/jacket/shirt1-removebg-preview.png",
      color: Color.fromARGB(255, 128, 203, 247)),
  
  Product(
      id: 5,
      title: "قميص 2",
      price: 234,
      size: 12,
      description: jackettext,
      image: "assets/images/jacket/shirt2-removebg-preview.png",
      color: Color.fromARGB(255, 94, 96, 185)),
 
];

String dummyText =
    "حقيبة عملية وأنيقة تجمع بين الأناقة والوظائف المتعددة، مثالية للإستخدام اليومي والسفر. تصميم فريد يجمع بين الجودة والأناقة، مع مساحات تخزين متعددة تلبي احتياجاتك اليومية بكل سهولة وراحة";
String jackettext = "الجاكيت للرجال قطعة أساسية في الملابس الرجالية، يضفي لمسة أنيقة على الإطلالة ,يمكن ارتداء الجاكيت في مختلف المناسبات والأوقات، سواء في العمل أو في الأنشطة اليومية  تتوفر الجاكيتات بأشكال وتصاميم متعددة، مما يسمح بتنسيقها بسهولة مع مختلف الأزياء";