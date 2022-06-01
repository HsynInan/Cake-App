import 'package:cakes_mobil/Drawer/cart.dart';
import 'package:cakes_mobil/Drawer/discountcoupons.dart';
import 'package:cakes_mobil/Drawer/favorites.dart';
import 'package:cakes_mobil/Drawer/help.dart';
import 'package:cakes_mobil/login/splashscreen.dart';
import 'package:cakes_mobil/Drawer/myorders.dart';
import 'package:cakes_mobil/widget/homepagecard1.dart';
import 'package:cakes_mobil/widget/homepagecard2.dart';
import 'package:cakes_mobil/widget/popularcard.dart';
import 'package:cakes_mobil/widget/smallcard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
            icon: Image.asset(
              "assets/menu.png",
              color: Colors.black87,
              width: 36,
              height: 36,
            )),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
            color: Colors.black87,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(),
              child: Image.asset(
                'assets/arka.png',
              ),
            ),
            ListTile(
              title: Text("HomePage"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Favorites"),
              leading: Image.asset(
                "assets/heart.png",
                width: 24,
                height: 24,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favorites()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("My Cart"),
              leading: Image.asset(
                "assets/shopping-carts.png",
                width: 24,
                height: 24,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("My Orders"),
              leading: Image.asset(
                "assets/order.png",
                width: 24,
                height: 24,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyOrders()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("My Discount Coupons"),
              leading: Image.asset(
                "assets/discount.png",
                width: 24,
                height: 24,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Coupons()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Help/Support"),
              leading: Image.asset(
                "assets/question.png",
                width: 24,
                height: 24,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Help()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Logout"),
              leading: Image.asset(
                "assets/logout.png",
                width: 24,
                height: 24,
                color: Colors.grey,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 14.0, right: 14, top: 10, bottom: 10),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(8),
                shadowColor: Colors.white54,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    hasFloatingPlaceholder: false,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white)),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      margin: EdgeInsets.only(right: 8),
                      width: 48,
                      child: Center(
                        child: Icon(
                          Icons.search,
                          size: 26,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 14.0, right: 14, top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fresh Taste of",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    "New Flavors",
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SmallCard("cake.png"),
                    SmallCard("ice-cream.png"),
                    SmallCard("coffee-breaks.png"),
                    SmallCard("fruit.png"),
                    SmallCard("cereal.png"),
                    SmallCard("birthday-cake.png"),
                    SmallCard("cereals.png"),
                    SmallCard("cake.png"),
                    SmallCard("ice-cream.png"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Popular Products",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.filter_list,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularCard(
                        image: "cakes.png",
                        baslik: "Strawberry Cake",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "suffle1.png",
                        baslik: "Suffle",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "bananafruit.png",
                        baslik: "Banana Juice",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "oreoo.png",
                        baslik: "Oreo Milkshake",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "atom.png",
                        baslik: "Pomegranate Juice",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "suffle.png",
                        baslik: "Suffle",
                        price: 24.00,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Drinks and Desserts",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.filter_list,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageCardBig(
                  image: "ıcecafe.png",
                  baslik: "Cold Coffee",
                  baslik2: "Lime with Coffee",
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
                  image: "bananafruit.png",
                  baslik: "Banana Juice",
                  baslik2: "Ice with Banana Juice",
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
                  image: "mochaa.png",
                  baslik: "Ice Mocha ",
                  baslik2: "Lime with Coffee",
                  price: 18.00,
                ),
                HomePageCardSmall(
                  image: "suffle.png",
                  baslik: "Suffle",
                  baslik2: "Chocolate with Suffle",
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
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Best Sellers",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.filter_list,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularCard(
                        image: "cakes.png",
                        baslik: "Strawberry Cake",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "suffle1.png",
                        baslik: "Suffle",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "oreoo.png",
                        baslik: "Strawberry Cake",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "bananafruit.png",
                        baslik: "Banana Juice",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "atom.png",
                        baslik: "Pomegranate Juice",
                        price: 24.00,
                      ),
                      PopularCard(
                        image: "suffle.png",
                        baslik: "Suffle",
                        price: 24.00,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
