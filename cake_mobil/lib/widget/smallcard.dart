import 'package:cakes_mobil/SmallPage.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final String resim;
  const SmallCard(this.resim);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SmallPage()));
        },
        child: Material(
          elevation: 3,
          color: Colors.white,
          shadowColor: Colors.white54,
          borderRadius: BorderRadius.circular(25),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: IconButton(
              icon: Image.asset(
                "assets/$resim",
                width: 30,
                height: 30,
                color: Colors.grey[800],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
