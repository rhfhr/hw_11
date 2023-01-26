import 'package:flutter/material.dart';
import 'package:hw11/Pages/Products.dart';

import '../models/Data.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'تفاصيل المنتج',
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                color: Color(0xFF577546)),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: NetworkImage(product.image),
                  height: 500,
                  width: 400,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image(
                      image: NetworkImage(product.image),
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image(
                      image: NetworkImage(product.image),
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image(
                      image: NetworkImage(product.image),
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.right,
                product.name,
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.right,
                product.price,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Icon(
                    Icons.share,
                    color: Colors.grey,
                  )),
            ],
          ),
          InkWell(
            onTap: () {
              Data.cart.add(product);
            },
            child: Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFFa4bfa0),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text("إضافة للسلة",
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
