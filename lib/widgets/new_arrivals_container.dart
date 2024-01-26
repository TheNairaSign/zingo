import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(2, 2),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Color.fromARGB(70, 247, 246, 246),
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
              InkWell(
                overlayColor: MaterialStateProperty.all(Colors.black),
                splashColor: Colors.grey,
                splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
                onTap: () {
                  debugPrint("Shop Now");
                },
                child: Row(
                  children: [
                    Text(
                      "SHOP NOW",
                      style: GoogleFonts.jost(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
