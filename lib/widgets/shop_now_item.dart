// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopNowItem extends StatelessWidget {
  const ShopNowItem({
    Key? key,
    required this.axisAlignment,
  }) : super(key: key);
  final MainAxisAlignment axisAlignment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.black),
      splashColor: Colors.grey,
      splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      onTap: () {
        debugPrint("Shop Now");
      },
      child: Row(
        mainAxisAlignment: axisAlignment,
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
    );
  }
}
