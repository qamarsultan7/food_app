import 'package:flutter/material.dart';
import 'package:food_app/const.dart';
import 'package:food_app/items.dart';
import 'package:food_app/promotions.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> images = [
    'Images/Offer_Fries.png',
    'Images/pizza_Offer.png',
    'Images/offers_burger.png'
  ];

  int selectedCategory = 0;
// ignore: prefer_typing_uninitialized_variables
  var category = 'All';
  int currentIndex = 0;
  void changeIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            changeIndex(index);
          },
          iconSize: 30,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Cart', icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(
                label: 'Favourite', icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(label: 'About', icon: Icon(Icons.info)),
          ]),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: heading1,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/premium-photo/man-with-shirt-that-says-no-one-it_745528-3501.jpg?w=740'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.all(17),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    hintText: 'Search here',
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          selectedCategory = 0;
                          category = 'All';
                          setState(() {});
                        },
                        child: ReuseableCircularAvatar(
                          image: 'Images/Logoall.png',
                          selected: selectedCategory,
                          current: 0,
                          name: 'All',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          selectedCategory = 1;
                          category = 'Burger';
                          setState(() {});
                        },
                        child: ReuseableCircularAvatar(
                          image: 'Images/burger.png',
                          selected: selectedCategory,
                          current: 1,
                          name: 'Burger',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          selectedCategory = 2;
                          category = 'Biryani';
                          setState(() {});
                        },
                        child: ReuseableCircularAvatar(
                          image: 'Images/biryani.png',
                          selected: selectedCategory,
                          current: 2,
                          name: 'Biryani',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          selectedCategory = 3;
                          category = 'Pizza';
                          setState(() {});
                        },
                        child: ReuseableCircularAvatar(
                          image: 'Images/pizza.png',
                          selected: selectedCategory,
                          current: 3,
                          name: 'Pizza',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          selectedCategory = 4;
                          category = 'Sanwich';
                          setState(() {});
                        },
                        child: ReuseableCircularAvatar(
                          image: 'Images/sandwich.png',
                          selected: selectedCategory,
                          current: 4,
                          name: 'Sanwich',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          selectedCategory = 5;
                          category = 'Fries';
                          setState(() {});
                        },
                        child: ReuseableCircularAvatar(
                          image: 'Images/fries.PNG',
                          name: 'Fries',
                          selected: selectedCategory,
                          current: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  thickness: 2,
                  color: Colors.orange,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Promotions(
                      image: images[0],
                      description:
                          'Free Box Of Fries\n On all Orders above \$200',
                    ),
                    Promotions(
                      image: images[1],
                      description: 'Free Pizza\n On all orders Above \$300',
                    ),
                    Promotions(
                      image: images[2],
                      description: 'Free Burger\n On all orders Above \$100',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                category,
                style: heading2,
              ),
              const All()
            ],
          ),
        ),
      ),
    );
  }
}

class ReuseableCircularAvatar extends StatelessWidget {
  final String image, name;
  final int selected, current;
  const ReuseableCircularAvatar(
      {Key? key,
      required this.image,
      required this.selected,
      required this.current,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: selected == current ? Colors.orange : Colors.orange[100],
          ),
          child: Center(
            child: Image(
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.width / 5,
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        Text(
          name,
          style: heading3,
        )
      ],
    );
  }
}
