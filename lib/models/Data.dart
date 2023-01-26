class Product {
  String image;
  String name;
  String price;
  Product({required this.image, required this.name, required this.price});
}

class Data {
  static List<Product> products = [
    Product(
        image:
            'https://cdn.salla.sa/Aedxd/b3hTFtpS0z8gpopInh1YDxifGRAmy66kcuVbDxfS.jpg',
        name: 'Herbal Strategi Just Out Herbal Lizard Repellent',
        price: '27 SAR'),
    Product(
        image:
            'https://cdn.salla.sa/Aedxd/izIx9SNHqUwoeNRlZRjH0UO3sc9idcN65FFJEbPH.jpg',
        name: 'Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
        price: '25 SAR'),
    Product(
        image:
            'https://cdn.salla.sa/Aedxd/h1zkVkCwxyMlCfxRqCBac4TMppEAFsXHt1FauvVw.png',
        name: 'بازيلاء لونا - Iona Shelling Petite Pea',
        price: '15 SAR'),
    Product(
        image:
            'https://cdn.salla.sa/Aedxd/FU4D5KgCtf7LLUfFefLeVpCqshDlYRmEapMdjogR.jpg',
        name: 'Herbal Strategi Just Out Herbal Ant Repellent',
        price: '29 SAR'),
    Product(
        image:
            'https://cdn.salla.sa/hFEv8iq4HQ2Cj2B1yLcAvCcxDJDX0uj8824BnIt4.jpeg',
        name: 'اكليل الجبل - Rosemary',
        price: '11 SAR')
  ];
  static List<Product> cart = [];
}
