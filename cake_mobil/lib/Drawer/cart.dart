import 'package:cakes_mobil/Drawer/payment.dart';
import 'package:cakes_mobil/widget/cart_item.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 48,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        width: double.infinity,
        color: Colors.grey.shade600,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Total: \$ ${birimFiyat * adet}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            OutlineButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MySample()));
              },
              child: Text('Pay Now'),
              borderSide: BorderSide(color: Colors.white),
              color: Colors.white,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Text(
          "My Cart",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartItem(
              baslik: "Cake",
              baslik2: "Cream with Strawberry",
              image: "cakes.png",
              price: 24.00,
            ),
            CartItem(
              baslik: "Suffle Cake",
              baslik2: "Chocolate with Suffle",
              image: "suffle1.png",
              price: 18.00,
            ),
            CartItem(
              baslik: "Banana Juice",
              baslik2: "Ice Juice",
              image: "bananafruit.png",
              price: 16.00,
            ),
            CartItem(
              baslik: "Juice",
              baslik2: "Pomegranate Ice Juice",
              image: "atom.png",
              price: 20.00,
            ),
            CartItem(
              baslik: "Ice Cream",
              baslik2: "Chocolate with Ice Cream",
              image: "ıcecream2.png",
              price: 10.00,
            ),
            CartItem(
              baslik: "Ice Mocha",
              baslik2: "Lime with Mocha",
              image: "mochaa.png",
              price: 12.00,
            ),
            CartItem(
              baslik: "Milkshake",
              baslik2: "Oreo with Milkshake",
              image: "oreoo.png",
              price: 14.00,
            ),
          ],
        ),
      ),
    );
  }
}
