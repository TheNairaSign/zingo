import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zingo/main.dart';
import 'package:zingo/widgets/shop_now_item.dart';

class NAContainer extends StatelessWidget {
  const NAContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
      width: 350,
      height: 220,
      clipBehavior: Clip.none,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: plusShadowColor,
            blurRadius: 5,
            offset: Offset(2, 2),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: minusShadowColor,
            blurRadius: 5,
            offset: Offset(-2, -2),
            spreadRadius: 7,
          ),
      
        ],
      ),
      child: Stack(
        children: [
          const Positioned(
          top: 3,
          left: 120,
          // right: -10,
          // bottom: 1,
          height: 300,
          width: 200,
            child: Image(
              image: AssetImage("assets/png/white-sofa.jpg"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Collection",
                style: GoogleFonts.jost(
                  color: Colors.grey,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "New Arrivals Winter",
                textScaleFactor: 2.7,
                style: GoogleFonts.jost(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              const ShopNowItem(
                axisAlignment: MainAxisAlignment.start,
              )
            ],
          ),
        ],
      ),
    );
  }
}
