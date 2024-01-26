import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zingo/models/bs_card_model.dart';

class BSCard extends StatefulWidget {
  const BSCard({super.key});

  @override
  State<BSCard> createState() => _BSCardState();
}

class _BSCardState extends State<BSCard> {
  List<BSCardModel> bsCardItems = [];

  void bscItms() {
    bsCardItems = BSCardModel.cardItems;
  }

  @override
  void initState() {
    super.initState();
    bscItms();
  }

  @override
  Widget build(BuildContext context) {
    const height = 100.0;
    return SizedBox(
      height: height * 3,
      child: ListView.builder(
          itemCount: bsCardItems.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final bsc = bsCardItems[index];
            return listItem(height, bsc);
          }),
    );
  }

  SizedBox listItem(double height, BSCardModel bsc) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Card(
        child: Row(
          children: [
            Container(
              height: height,
              width: 70,
              decoration: BoxDecoration(
                color: const Color(0xfff3f3f1),
                image: DecorationImage(
                  image: AssetImage(bsc.imgPath),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(width: 10),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bsc.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textScaleFactor: 1.2,
                    style: GoogleFonts.jost(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text("\$${bsc.subTitle}"),
                ],
              ),
            ),
            // const SizedBox(width: 10),
            const Spacer(),
            shopButton(),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  TextButton shopButton() {
    return TextButton(
      onPressed: () {},
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(0xff232a37),
        ),
      ),
      child: Text(
        "Shop",
        style: GoogleFonts.jost(
          color: Colors.white,
        ),
      ),
    );
  }
}
