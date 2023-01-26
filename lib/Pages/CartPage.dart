import 'package:flutter/material.dart';

import '../models/Data.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f7f9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var product in Data.cart)
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ClipOval(
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(40),
                                    child: Image(
                                      image: NetworkImage(product.image),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 70,
                                  width: 260,
                                  child: Text(
                                    product.name,
                                    style: const TextStyle(
                                        color: Color(0xFFa4bfa0), fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                product.price,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(
                                width: 230,
                              ),
                              Text(
                                'السعر',
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
