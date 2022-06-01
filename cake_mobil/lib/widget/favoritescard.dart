import 'package:cakes_mobil/innerpage.dart';
import 'package:flutter/material.dart';

class FavoritesCard extends StatefulWidget {
  final String baslik;
  final String baslik2;

  final String image;
  final double price;
  const FavoritesCard(
      {this.baslik, this.baslik2, @required this.image, this.price});
  @override
  _FavoritesCardState createState() => _FavoritesCardState();
}

class _FavoritesCardState extends State<FavoritesCard> {
  int adet = 1;
  double birimFiyat = 18.00;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        shadowColor: Colors.white54,
        color: Colors.white,
        elevation: 8,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InnerPage(
                          image: widget.image,
                          baslik: widget.baslik,
                          price: widget.price,
                        )));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 190,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 140,
                    child: Image.asset(
                      "assets/${widget.image}",
                      //   fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${widget.baslik}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete_outline,
                                    color: Colors.grey[700],
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Text(
                              "${widget.baslik2}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                      "assets/starr.png",
                                      width: 14,
                                      height: 14,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                      "assets/starr.png",
                                      width: 14,
                                      height: 14,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                      "assets/starr.png",
                                      width: 14,
                                      height: 14,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                      "assets/starr.png",
                                      width: 14,
                                      height: 14,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                      "assets/starr.png",
                                      width: 14,
                                      height: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24.0),
                                  child: Text(
                                    "\$ ${birimFiyat * adet}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.black87),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24.0, left: 8, right: 12),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap: () {
                                                if (adet != 1) {
                                                  setState(() {
                                                    adet = adet - 1;
                                                  });
                                                }
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Icon(
                                                  Icons.remove_circle_outline,
                                                  color: Colors.grey[500],
                                                  size: 24,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "$adet",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  adet = adet + 1;
                                                });
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Icon(
                                                  Icons.add_circle_outline,
                                                  color: Colors.grey[800],
                                                  size: 24,
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
      ),
    );
  }
}
