import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zingo/pages/show_all_page.dart';
import 'package:zingo/widgets/best_sellers_card.dart';
import 'package:zingo/widgets/new_arrivals_container.dart';
import 'package:zingo/widgets/show_all.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const BackButton(),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        const Center(child: NAContainer()),
                    itemCount: 3,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Best Sellers",
                      textScaleFactor: 1.6,
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    const ShowAll(page: ShowAllPage())
                  ],
                ),
                const SizedBox(height: 10),
                const BSCard(),
                const SizedBox(height: 50),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xfff6f6f8),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          color: Color.fromARGB(86, 158, 158, 158),
                          offset: Offset(2, 2),
                          spreadRadius: 2,
                        ),
                        BoxShadow(
                          blurRadius: 2,
                          color: Color.fromARGB(86, 158, 158, 158),
                          offset: Offset(-2, -2),
                          spreadRadius: 2,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: Stack(
                      children: [
                        const Positioned(
                          child: Image(
                            image: AssetImage("assets/black-chair.png"),
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Black Fridays",
                                style: GoogleFonts.jost(
                                  color: Colors.grey,
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Text(
                                "SALES UP TO 70% OFF",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.start,
                                textScaleFactor: 2.9,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                            ),
                      ],
                    ),
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
