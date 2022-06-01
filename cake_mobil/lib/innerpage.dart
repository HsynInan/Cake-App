import 'package:cakes_mobil/Drawer/cart.dart';
import 'package:flutter/material.dart';

class InnerPage extends StatefulWidget {
  @override
  final String image;
  final String baslik;
  final double price;
  const InnerPage({this.image, this.baslik, this.price});

  _InnerPageState createState() => _InnerPageState();
}

int adet = 1;
double birimFiyat = 24.00;

class _InnerPageState extends State<InnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        actions: [
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black87,
              ),
              onPressed: () {})
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[100],
                child: Image.asset(
                  "assets/${widget.image}",
                  width: 300,
                  height: 300,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Flexible(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.grey[300],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 14.0, top: 14, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${widget.baslik}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/starr.png",
                                width: 18,
                                height: 18,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "5.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                      14.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Details",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey[700])),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                          ),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                    color: Colors.black26,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    if (adet != 1) {
                                      setState(() {
                                        adet = adet - 1;
                                      });
                                    }
                                  }),
                              Text(
                                "$adet",
                                style: TextStyle(fontSize: 18),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.black54,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      adet = adet + 1;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(
                            14.0,
                          ),
                          child: Text(
                              "Cake with fresh cream taste and fresh ingredients of blueberry. We have wide range of cakes on out sotre Also we can order for events.",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[600])),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 14.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Material(
                                shadowColor: Colors.white54,
                                elevation: 5,
                                borderRadius: BorderRadius.circular(28),
                                color: Colors.grey.shade100,
                                child: Container(
                                  height: 100,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Delivery Time",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              size: 20,
                                            ),
                                            Text(
                                              " 45 Mins",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Material(
                                shadowColor: Colors.white54,
                                elevation: 5,
                                borderRadius: BorderRadius.circular(28),
                                color: Colors.grey.shade100,
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Total Price",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "\$ ${birimFiyat * adet}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 14.0, right: 0, bottom: 12),
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Container(
                                    height: 50,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: Colors.red.shade400,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Buy Now",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Cart()));
                                            },
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
