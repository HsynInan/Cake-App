import 'package:cakes_mobil/widget/favoritescard.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Text(
          "Favorites",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 18),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FavoritesCard(
                image: "atom.png",
                baslik2: "Pomegranate Ice Juice",
                baslik: "Ice Juice",
                price: 18.00,
              ),
              FavoritesCard(
                image: "chuko.png",
                baslik2: "Chocolate with Chuko",
                baslik: "Chuko",
                price: 18.00,
              ),
              FavoritesCard(
                image: "cakes.png",
                baslik2: "Cream with Strawberry",
                baslik: "Strawberry",
                price: 18.00,
              ),
              FavoritesCard(
                image: "teaa.png",
                baslik2: "Hot Tea",
                baslik: "Tea",
                price: 18.00,
              ),
              FavoritesCard(
                image: "ıcecafe.png",
                baslik2: "Lime with Coffee",
                baslik: "Ice Coffee",
                price: 18.00,
              ),
              FavoritesCard(
                image: "ıcecream2.png",
                baslik2: "Chocolate with Cream",
                baslik: "Ice Cream",
                price: 18.00,
              ),
              FavoritesCard(
                image: "bananafruit.png",
                baslik2: "Ice Juice",
                baslik: "Banana Juice",
                price: 18.00,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
