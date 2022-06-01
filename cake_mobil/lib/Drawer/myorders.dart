import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "My Orders",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                shadowColor: Colors.white54,
                elevation: 6,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 10),
                        child: Text(
                          "Suffle",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "12 July 2020",
                          style: TextStyle(color: Colors.black54),
                        ),
                        subtitle: Text("Total : 18.00 \$"),
                        trailing: InkWell(
                          onTap: () {},
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            child: InkWell(
                              child: Icon(
                                Icons.arrow_right,
                                size: 35,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Order Prepared",
                              style: TextStyle(color: Colors.amber.shade700),
                            ),
                            Image.asset(
                              "assets/suffle1.png",
                              width: 96,
                              height: 96,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                shadowColor: Colors.white54,
                elevation: 6,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 10),
                        child: Text(
                          "Banana Fruit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "12 July 2020",
                          style: TextStyle(color: Colors.black54),
                        ),
                        subtitle: Text("Total : 10.00 \$"),
                        trailing: InkWell(
                          onTap: () {},
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            child: InkWell(
                              child: Icon(
                                Icons.arrow_right,
                                size: 35,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Order Completed",
                              style: TextStyle(color: Colors.green),
                            ),
                            Image.asset(
                              "assets/bananafruit.png",
                              width: 96,
                              height: 96,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                shadowColor: Colors.white54,
                elevation: 6,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 10),
                        child: Text(
                          "Ice Cream",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "12 July 2020",
                          style: TextStyle(color: Colors.black54),
                        ),
                        subtitle: Text("Total : 18.00 \$"),
                        trailing: InkWell(
                          onTap: () {},
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            child: InkWell(
                              child: Icon(
                                Icons.arrow_right,
                                size: 35,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Your order has been taken",
                              style: TextStyle(color: Colors.red),
                            ),
                            Image.asset(
                              "assets/ıcecream3.png",
                              width: 96,
                              height: 96,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
