import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zingo/components/drawer.dart';
import 'package:zingo/models/show_all/cyber_monday.dart';
import 'package:zingo/models/show_all/new_arrivals.dart';
import 'package:zingo/providers/appbar_key_provider.dart';
import 'package:zingo/widgets/show_all.dart';

class ShowAllPage extends StatefulWidget {
  const ShowAllPage({super.key});

  @override
  State<ShowAllPage> createState() => _ShowAllPageState();
}

class _ShowAllPageState extends State<ShowAllPage> {
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
    final _ = context.read<KeyProvider>();
    return Consumer<KeyProvider>(
      builder: (context, key, child) => SafeArea(
        child: Scaffold(
          // appBar: MyAppBar(
          //   onTap: () {
          //   _.openDrawer2();
          // }),
          drawer: const MenuDrawer(),
          key: _.scaffoldKey2,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                clockContainer(key),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "New Arrivals",
                        style: GoogleFonts.jost(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const ShowAll(page: NewArrivals()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: SizedBox(
                    height: 200,
                    child: ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => const SizedBox(width: 15),
                        scrollDirection: Axis.horizontal,
                        itemCount: cmItems.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:NetworkImage(cmItems[index].productImage),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                // child: FadeInImage(
                                //   placeholder: MemoryImage(kTransparentImage),
                                //   image: NetworkImage(cmItems[index].productImage),
                                //   fit: BoxFit.cover,
                                // ),
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
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container clockContainer(KeyProvider key) {
    return Container(
      height: 600,
      padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/png/background-clock.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  // Drawer not opening....Fix it!
                  onTap: () {
                    setState(() {
                      debugPrint("Open Drawer");
                      key.openDrawer2();
                    });
                  },
                  child: const Icon(Icons.menu),
                ),
                const Spacer(),
                const Icon(Icons.shopping_bag_outlined),
                const SizedBox(width: 10),
                const Icon(Icons.favorite_border_outlined),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "Cyber Monday",
            style: GoogleFonts.jost(
              fontSize: 30,
              color: Colors.grey,
            ),
          ),
          Text(
            "Sale up to 70% Off",
            textScaleFactor: 4.3,
            maxLines: 2,
            style: GoogleFonts.jost(),
          ),
        ],
      ),
    );
  }
}
