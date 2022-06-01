import 'package:cakes_mobil/innerpage.dart';
import 'package:flutter/material.dart';

class HomePageCardBig extends StatefulWidget {
  final String baslik;
  final String baslik2;

  final String image;
  final double price;
  const HomePageCardBig({this.baslik, this.baslik2, this.image, this.price});

  @override
  _HomePageCardBigState createState() => _HomePageCardBigState();
}

class _HomePageCardBigState extends State<HomePageCardBig> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          shadowColor: Colors.white70,
          elevation: 5,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InnerPage(
                            baslik: widget.baslik,
                            image: widget.image,
                            price: widget.price,
                          )));
            },
            child: Container(
              height: 261,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, top: 4),
                      child: Image.asset(
                        "assets/${widget.image}",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 160,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.baslik}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "${widget.baslik2}",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${widget.price}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black87,
                                ),
                                onPressed: () {})
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
