import 'package:flutter/material.dart';
import 'package:food_app/product_view.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<All> {
  List<String> images = [
    'Images/biryani.png',
    'Images/pizza.png',
    'Images/biryani.png',
    'Images/biryani.png',
    'Images/pizza.png',
    'Images/burger.png'
  ];
  List<String> iMagesView = [
    'Images/biryani.png',
    'Images/pizza_Offer.png',
    'Images/biryani.png',
    'Images/biryani.png',
    'Images/pizza_Offer.png',
    'Images/burger.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductView(
                              imageofProduct: iMagesView[0],
                              proDuctName: 'Karachi\'s Biryani',
                              description:
                                  'Famous Biryani Of Karachi Real Taste.',
                              price: '20',
                            )));
              },
              child: row(images[0], ' Biryani', '\$20', context),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductView(
                                imageofProduct: iMagesView[1],
                                proDuctName: 'Pizza',
                                description: 'Pizza of all Time fav',
                                price: '100',
                              )));
                },
                child: row(images[1], 'Pizza', '\$100', context))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductView(
                                imageofProduct: iMagesView[2],
                                proDuctName: 'Karachi\'s Biryani',
                                description:
                                    'Famous Biryani Of Karachi Real Taste.',
                                price: '20',
                              )));
                },
                child: row(images[2], ' Biryani', '\$20', context)),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductView(
                                imageofProduct: iMagesView[3],
                                proDuctName: 'Karachi\'s Biryani',
                                description:
                                    'Famous Biryani Of Karachi Real Taste.',
                                price: '40',
                              )));
                },
                child: row(images[3], 'HydraAbadi\'s ', '\$40', context))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductView(
                              imageofProduct: iMagesView[4],
                              proDuctName: 'Pizza',
                              description: 'Pizza in all sizes',
                              price: '90',
                            )));
              },
              child: row(
                images[4],
                'Pizza',
                '\$90',
                context,
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductView(
                                imageofProduct: iMagesView[5],
                                proDuctName: 'Cheese Burger',
                                description: 'Famous Burger .',
                                price: '120',
                              )));
                },
                child: row(images[5], 'Cheese Burger', '\$120', context))
          ],
        )
      ],
    );
  }
}

Widget row(String images, itemName, price, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width / 2.3,
      
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
          boxShadow: const [
            BoxShadow(blurRadius: 5, color: Colors.grey, offset: Offset(0, 5)),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0,bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: Image(
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(images)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0),
              child: Text(
                
                itemName,
                style: const TextStyle(
                  fontFamily: 'ADLaM Display',
                  fontSize: 18,fontWeight: FontWeight.bold ),
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height *0.009 ,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price,style: const TextStyle(
                  fontFamily: 'ADLaM Display',
                  fontSize: 15,fontWeight: FontWeight.bold )),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.favorite,color: Colors.white,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
