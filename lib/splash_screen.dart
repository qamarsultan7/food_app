import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/const.dart';
import 'package:food_app/home.dart';
import 'package:food_app/product_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 93,
                backgroundColor: Colors.blueAccent,
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('Images/Logo.PNG'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Foodies',
              style: heading1,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'The Best Food In Town',
              style: normal,
            )
          ],
        ),
      ),
    );
  }
}
