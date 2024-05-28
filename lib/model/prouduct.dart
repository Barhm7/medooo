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
      title: "frame bag",
      price: 22,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "satchel",
      price: 134,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: " Kate Spade",
      price: 154,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Fendi",
      price: 126,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Chanel",
      price: 135,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "satchel",
    price: 134,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),
  ),
];

List<Product> dress = [
  Product(
      id: 1,
      title: "فستان 1",
      price: 244,
      size: 12,
      description: clothh,
      image: "assets/images/dress/2024-04-24_17.27.30-removebg-preview.png",
      color: Color.fromARGB(255, 238, 201, 36)),
  Product(
      id: 5,
      title: "فستان 5",
      price: 276,
      size: 12,
      description: clothh,
      image: "assets/images/dress/images-removebg-preview.png",
      color: const Color(0xFFFB7883)),
];

List<Product> ex = [
  Product(
      id: 1,
      title: "ماوس ",
      price: 13,
      size: 12,
      description: mouseText,
      image: "assets/images/pc/mouse-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 5,
      title: "كيبورد ",
      price: 23,
      size: 12,
      description: mouseText,
      image: "assets/images/pc/download-removebg-preview (2).png",
      color: const Color.fromARGB(255, 236, 222, 223)),
];

List<Product> laptop = [
  Product(
      id: 1,
      title: "dell",
      price: 550,
      size: 12,
      description: laptopptext,
      image: "assets/images/pc/dell-removebg-preview.png",
      color: const Color.fromARGB(255, 128, 203, 247)),
  Product(
      id: 5,
      title: "hp",
      price: 670,
      size: 12,
      description: laptopptext,
      image: "assets/images/pc/download-removebg-preview.png",
      color: const Color.fromARGB(255, 94, 96, 185)),
];

List<Product> jacket = [
  Product(
      id: 1,
      title: "جاكيت 1",
      price: 110,
      size: 12,
      description: jackettext,
      image: "assets/images/jacket/jacket-removebg-preview.png",
      color: const Color.fromARGB(255, 45, 47, 48)),
  Product(
      id: 5,
      title: "جاكيت 2",
      price: 90,
      size: 12,
      description: jackettext,
      image: "assets/images/jacket/jacket2-removebg-preview.png",
      color: const Color.fromARGB(255, 200, 200, 218)),
];

List<Product> shirt = [
  Product(
      id: 1,
      title: "قميص 1",
      price: 27,
      size: 12,
      description: jackettext,
      image: "assets/images/jacket/shirt1-removebg-preview.png",
      color: const Color.fromARGB(255, 128, 203, 247)),
  Product(
      id: 5,
      title: "قميص 2",
      price: 44,
      size: 12,
      description: jackettext,
      image: "assets/images/jacket/shirt2-removebg-preview.png",
      color: const Color.fromARGB(255, 94, 96, 185)),
];
List<Product> SmartWatch = [
  Product(
      id: 1,
      title: "green lion 4G kids ",
      price: 44,
      size: 12,
      description: watchtext,
      image:
          "assets/images/watch/IMAGE_2024-04-24_17_39_45-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 5,
      title: "green lion infinity smart  ",
      price: 45,
      size: 12,
      description: watchtext,
      image:
          "assets/images/watch/IMAGE_2024-04-24_17_40_03-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 2,
      title: "prodo 4G GPS smart ",
      price: 55,
      size: 12,
      description: watchtext,
      image:
          "assets/images/watch/IMAGE_2024-04-24_17_40_18-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 3,
      title: "apple watch charger ",
      price: 50,
      size: 12,
      description: watchtext,
      image:
          "assets/images/watch/IMAGE_2024-04-24_17_40_29-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
];

List<Product> Watch = [
  Product(
      id: 1,
      title: "casio general metal ",
      price: 34,
      size: 12,
      description: watchtext2,
      image:
          "assets/images/watch/IMAGE_2024-04-24_17_46_26-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 5,
      title: "casio general quartez  ",
      price: 23,
      size: 12,
      description: watchtext2,
      image:
          "assets/images/watch/IMAGE_2024-04-24_17_46_36-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 2,
      title: "casio stainless steal  ",
      price: 24,
      size: 12,
      description: watchtext2,
      image:
          "assets/images/watch/IMAGE_2024-04-24_17_46_49-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 3,
      title: "casio silver stainless ",
      price: 33,
      size: 12,
      description: watchtext2,
      image:
          "assets/images/watch/IMAGE_2024-04-24_17_46_59-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
];
List<Product> fridg = [
  Product(
      id: 1,
      title: "DENKA RD_200SBK ",
      price: 330,
      size: 12,
      description: fridgeText,
      image:
          "assets/images/home/IMAGE_2024-04-24_18_09_05-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 5,
      title: "DENKA top mount",
      price: 320,
      size: 12,
      description: fridgeText,
      image:
          "assets/images/home/IMAGE_2024-04-24_18_09_12-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 2,
      title: "midea mini bar",
      price: 300,
      size: 12,
      description: fridgeText,
      image:
          "assets/images/home/IMAGE_2024-04-24_18_09_21-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 3,
      title: "DENKA 10ft conventinola ",
      price: 200,
      size: 12,
      description: fridgeText,
      image:
          "assets/images/home/IMAGE_2024-04-24_18_09_44-removebg-preview.png",
      color: Color.fromARGB(255, 196, 193, 193))
];
List<Product> water = [
  Product(
      id: 1,
      title: "GOSONIC water coller",
      price: 120,
      size: 12,
      description: waterrr,
      image:
          "assets/images/home/IMAGE_2024-04-24_18_08_34-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 5,
      title: "TCL TY_TWYR83 ",
      price: 105,
      size: 12,
      description: waterrr,
      image:
          "assets/images/home/IMAGE_2024-04-24_18_08_44-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 2,
      title: "midea free standing water  ",
      price: 120,
      size: 12,
      description: waterrr,
      image:
          "assets/images/home/IMAGE_2024-04-24_18_08_50-removebg-preview.png",
      color: Color.fromARGB(255, 196, 193, 193)),
  Product(
      id: 3,
      title: "hyundai water cooler",
      price: 103,
      size: 12,
      description: waterrr,
      image:
          "assets/images/home/IMAGE_2024-04-24_18_08_57-removebg-preview.png",
      color: const Color.fromARGB(255, 196, 193, 193))
];
String dummyText =
    "حقيبة عملية وأنيقة تجمع بين الأناقة والوظائف المتعددة، مثالية للإستخدام اليومي والسفر. تصميم فريد يجمع بين الجودة والأناقة، مع مساحات تخزين متعددة تلبي احتياجاتك اليومية بكل سهولة وراحة";
String jackettext =
    "الجاكيت للرجال قطعة أساسية في الملابس الرجالية، يضفي لمسة أنيقة على الإطلالة ,يمكن ارتداء الجاكيت في مختلف المناسبات والأوقات، سواء في العمل أو في الأنشطة اليومية  تتوفر الجاكيتات بأشكال وتصاميم متعددة، مما يسمح بتنسيقها بسهولة مع مختلف الأزياء";
String watchtext =
    "استمتع بالراحة والأناقة مع ساعتنا الذكية الأحدث، التي تجمع بين التكنولوجيا المتقدمة والتصميم الأنيق. ابقى متصلاً وقم بتتبع لياقتك بسهولة مع رفيق أنيق يناسب نمط حياتك النشط";

String watchtext2 =
    "اكتشف الأناقة الكلاسيكية مع ساعتنا الرائعة، تجمع بين الأناقة التقليدية والجودة العالية لتكون رفيقك المثالي في كل مناسبة";
String fridgeText =
    "استمتع بالتبريد القوي والأداء الموثوق مع ثلاجتنا العصرية، التي توفر مساحة واسعة وتقنيات حديثة للحفاظ على طعامك طازجًا ومنظمًا بشكل مثالي";

String waterrr =
    "احصل على مياه منعشة طوال اليوم مع مبرد المياه العصري، يوفر تبريدًا فعالًا ومياه باردة بلمسة واحدة، مما يجعله الخيار المثالي للراحة والانتعاش في أي وقت";

String clothh =
    "تجدون لدينا أحدث صيحات الموضة وأجود أنواع الأقمشة، مع مجموعة واسعة من الملابس العصرية والمريحة التي تلبي جميع احتياجاتك اليومية بأناقة وأناقة لا مثيل لها.";

String laptopptext =
    'اكتشف الأداء القوي والتصميم الأنيق مع أحدث أجهزة الكمبيوتر المحمولة، التي تجمع بين السرعة والموثوقية لتلبية جميع احتياجاتك اليومية والعملية بكفاءة وراحة';

String mouseText =
    "تجربة فريدة من نوعها مع لوحة المفاتيح والفأرة اللاسلكية، توفر سهولة الاستخدام والدقة في الأداء، مما يجعل العمل والترفيه على الكمبيوتر أكثر متعة وفعالية.";
