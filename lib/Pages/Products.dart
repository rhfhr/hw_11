import 'package:flutter/material.dart';
import '../Pages/CartPage.dart';
import 'ProductDetails.dart';
import '../models/Data.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

var currentIndex = 0;

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 0) {
      body = UpProducts();
    } else if (currentIndex == 1) {
      body = CartPage();
    } else {
      body = UpProducts();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("جذووووووووووووور",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.normal)),
        backgroundColor: Colors.white,
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Login',
          ),
        ],
      ),
      backgroundColor: Color(0xFFf5f7f9),
      // UpProducts(),
    );
  }
}

class UpProducts extends StatelessWidget {
  const UpProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lowest price",
                style: TextStyle(color: Color(0xFF577546), fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                width: 500,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var product in Data.products)
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (Context) => SingleChildScrollView(
                                  child: ProductDetails(
                                product: product,
                              )),
                            );
                          },
                          child: Container(
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Image(
                                  image: NetworkImage(product.image),
                                  fit: BoxFit.fill,
                                  width: 250,
                                  height: 300,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    product.name,
                                    style: const TextStyle(
                                        color: Color(0xFFa4bfa0), fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Row(
                                    children: [
                                      Text(
                                        product.price,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    color: Color(0xFFf8fafc),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  width: 500,
                  height: 250,
                  //margin: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Image.network(
                    'https://cdn.salla.sa/Aedxd/design/eSPIKpVma6Yo0WftvwwVEGpjnOGdupA3rCX63gG0.jpg?rand=0.9422407322490227?rand=0.7949860411290293?rand=0.7783700531809306?rand=0.8793837302711434',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    color: Color(0xFFf8fafc),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  width: 500,
                  height: 250,
                  //margin: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Image.network(
                    'https://cdn.salla.sa/Aedxd/design/aIzm8Zi3euzRPfIvz6memq6BejFiNpgFwEeweRmQ.jpg?rand=0.9320803903145549?rand=0.27563371470465803?rand=0.42759597846688513?rand=0.01269328671803216',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    color: Color(0xFFf8fafc),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  width: 500,
                  height: 250,
                  //margin: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Image.network(
                    'https://cdn.salla.sa/Aedxd/design/mv1lfttRfUl1yfM9pNxsy58pPWJo172H0wclRFGj.jpg?rand=0.630504347325717?rand=0.5184868075117148?rand=0.3400214384546366?rand=0.46533691104156705',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    color: Color(0xFFf8fafc),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  width: 500,
                  height: 250,
                  //margin: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Image.network(
                    'https://cdn.salla.sa/Aedxd/design/n9fJqvWHqGpnibRBQNKdWcaAnknlz4nt1H6yqdQf.jpg?rand=0.9248438013437563?rand=0.369616655818401?rand=0.837021724824008?rand=0.24109499436775117',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    color: Color(0xFFf8fafc),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  width: 500,
                  height: 250,
                  //margin: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Image.network(
                    'https://cdn.salla.sa/Aedxd/design/HOtTfj7vd2MW0BRO6RdTN1ya2F2Ui3XEQTs1bAWn.jpg?rand=0.3119765547268981?rand=0.34216656569288306',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    color: Color(0xFFf8fafc),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  width: 500,
                  height: 250,
                  //margin: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Image.network(
                    'https://cdn.salla.sa/Aedxd/design/UTalx4QUZQ3gP0XJFlyRy3ngNNx5V3whaBT4K9IA.jpg?rand=0.3873118377580299',
                    fit: BoxFit.cover,
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
