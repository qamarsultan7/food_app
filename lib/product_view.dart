import 'package:flutter/material.dart';
import 'package:food_app/const.dart';

class ProductView extends StatefulWidget {
  final String imageofProduct, proDuctName, description, price;

  // ignore: prefer_const_constructors_in_immutables
  ProductView({
    Key? key,
    required this.imageofProduct,
    required this.proDuctName,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.orange,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10, right: 15.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 28,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.8',
                                  style: heading3,
                                )
                              ],
                            ),
                          ),
                        ),
                        Text(
                          '\$${widget.price}',
                          style: heading3,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.proDuctName,
                          style: heading3,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.height * 0.04,
                              child: FloatingActionButton(
                                heroTag: 'incr',
                                onPressed: () {
                                  if (count > 1) {
                                    setState(() {
                                      count--;
                                    });
                                  }
                                },
                                backgroundColor: Colors.orange,
                                child: const Icon(Icons.remove),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              count.toString(),
                              style: heading3,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.height * 0.04,
                              child: FloatingActionButton(
                                heroTag: 'increas',
                                onPressed: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                                backgroundColor: Colors.orange,
                                child: const Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Add Ons',
                      style: heading3,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          addsOn(
                              'https://as2.ftcdn.net/v2/jpg/03/18/87/13/1000_F_318871367_K2wB4ccBqoGvyPyAP5iKsgyKxcorR5Ob.jpg',
                              'Salaad',
                              context),
                          addsOn(
                              'https://www.nicepng.com/png/detail/427-4278914_tomato-ketchup-sachet-heinz-tomato-ketchup.png',
                              'Cocacola',
                              context),
                          addsOn(
                              'https://www.drinksupermarket.com/media/catalog/product/cache/8b581ff15af3d0f5c66f4d11bd96034e/c/o/coca-cola-original-330ml.jpg',
                              'Souce',
                              context),
                          addsOn(
                              'https://as2.ftcdn.net/v2/jpg/03/18/87/13/1000_F_318871367_K2wB4ccBqoGvyPyAP5iKsgyKxcorR5Ob.jpg',
                              'bnana',
                              context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(2, 2))
                    ]),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: Text(
                      'Add To Cart',
                      style: heading3,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/10,
            left: MediaQuery.of(context).size.width/5,
            child: SizedBox(
              width: MediaQuery.of(context).size.width/1.5,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(widget.imageofProduct)),
            ),
          )
        ],
      ),
    );
  }
}

Widget addsOn(String images, tag, BuildContext context) {
  return Card(
    shadowColor: Colors.grey,
    elevation: 3,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack(
        children: [
          Image(
              height: 80,
              width: MediaQuery.of(context).size.width / 4.8,
              image: NetworkImage(images)),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 30,
              width: 30,
              child: FloatingActionButton(
                heroTag: tag,
                onPressed: () {},
                backgroundColor: Colors.orange,
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
