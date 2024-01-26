import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zingo/main.dart';
import 'package:zingo/models/show_all/cyber_monday.dart';
import 'package:zingo/models/show_all/new_arrivals_page.dart';
import 'package:zingo/widgets/show_all.dart';

class NewArrivals extends StatefulWidget {
  const NewArrivals({super.key, required this.expanded,});
  final bool expanded;

  @override
  State<NewArrivals> createState() => _NewArrivalsState();
}

class _NewArrivalsState extends State<NewArrivals> {
  List<CyberMonday> cmItems = [];

  void cmDeals() {
    cmItems = CyberMonday.cmItems;
  }

  @override
  void initState() {
    super.initState();
    cmDeals();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Text(
                "New Arrivals",
                textScaleFactor: 1.6,
                style: GoogleFonts.jost(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              widget.expanded == false? const ShowAll(page: NewArrivalsPage()) : const Icon(Icons.arrow_drop_down)
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            scrollDirection: Axis.horizontal,
            itemCount: cmItems.length,
            itemBuilder: (context, index) {
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(cmItems[index].productImage),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(1, 1),
                            spreadRadius: 1,
                            blurRadius: 2,
                            color: plusShadowColor
                          ),
                          BoxShadow(
                            offset: Offset(-1, -1),
                            spreadRadius: 7,
                            blurRadius: 2,
                            color: minusShadowColor
                          )
                        ]
                      ),
                    ),
                    Text(
                      cmItems[index].productName,
                      maxLines: 2,
                      style: GoogleFonts.jost(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$${cmItems[index].productPrice}",
                      style: GoogleFonts.jost(color: Colors.grey),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
