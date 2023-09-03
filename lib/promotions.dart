import 'package:flutter/material.dart';
import 'package:food_app/const.dart';

class Promotions extends StatelessWidget {
  final String image,description;
  const Promotions({Key? key, required this.image,required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/1.04,
              height: MediaQuery.of(context).size.height / 4,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width/1.04,
                  height: MediaQuery.of(context).size.height / 6,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  child:  Padding(
                    padding:const EdgeInsets.only(left: 5, bottom: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const  Text(
                          'Todays\'s  Offer',
                          style: heading3,
                        ),
                      const  SizedBox(
                          height: 5,
                        ),
                        Text(
                          description.toString(),
                          style: normal,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              
              width: MediaQuery.of(context).size.width/1.04,
              child: const Text(
                'Promotion',
                style: heading2,
              ),
            ),
            Positioned(
                right: 20,
                top: -10,
                child: Image(
                    height: MediaQuery.of(context).size.height / 4,
                    image: AssetImage(image)))
          ],
        ),
      ),
    );
  }
}
