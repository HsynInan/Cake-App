import 'package:cakes_mobil/widget/homepagecard1.dart';
import 'package:cakes_mobil/widget/homepagecard2.dart';
import 'package:flutter/material.dart';

class SmallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cake",
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.grey.shade100,
        ),
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomePageCardBig(
                      image: "suffle1.png",
                      baslik: "Suffle",
                      baslik2: "Chocolate with Suffle",
                      price: 18.00,
                    ),
                    HomePageCardSmall(
                      image: "cakes.png",
                      baslik: "Strawberry Cake",
                      baslik2: "Cream with Strawberry",
                      price: 24.00,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    HomePageCardSmall(
                      image: "blueberrycake.png",
                      baslik: "Blueberry Cake",
                      baslik2: "Cream with berry",
                      price: 24.00,
                    ),
                    HomePageCardBig(
                      image: "suffle.png",
                      baslik: "Suffle",
                      baslik2: "Chocolate with Suffle",
                      price: 18.00,
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomePageCardBig(
                      image: "ıcecream3.png",
                      baslik: "Ice Cream",
                      baslik2: "Chocolate with Cream",
                      price: 18.00,
                    ),
                    HomePageCardSmall(
                      image: "ıcecream1.png",
                      baslik: "Cherry Cake",
                      baslik2: "Cherry with Cream",
                      price: 24.00,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    HomePageCardSmall(
                      image: "oreoo.png",
                      baslik: "Oreo Milkshake",
                      baslik2: "Chocolate with Milkshake",
                      price: 24.00,
                    ),
                    HomePageCardBig(
                      image: "suffle1.png",
                      baslik: "Suffle",
                      baslik2: "Chocolate with Suffle",
                      price: 18.00,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
