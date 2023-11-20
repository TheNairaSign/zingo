import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zingo/components/drawer.dart';
import 'package:zingo/models/explore_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ExploreModel> items = [];

  void _exploreModel() {
    items = ExploreModel.exploreItems;
  }

  @override
  void initState() {
    super.initState();
    _exploreModel();
  }
  
  var tappedIndex = -1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actionsIconTheme: const IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.search,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: GoogleFonts.jost(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                textScaleFactor: 4,
              ),
              const SizedBox(height: 20),
              _exploreHorizontalScroll(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _exploreHorizontalScroll() {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 210,
                width: 210,
                child: GestureDetector(
                  
                  onTap: () {
                    print(items[index].category.name);
                    setState(() {
                      tappedIndex = index;
                    });
                  },
                  child: Card(
                    color: tappedIndex == index ? const Color(0xfff4c670) : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadowColor: Colors.black,
                    surfaceTintColor: Colors.black,
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Image.asset(
                        items[index].categoryImage,
                       height: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                items[index].category.name[0].toUpperCase() + items[index].category.name.substring(1),
                style: GoogleFonts.jost(
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                ),
              ),
              Text("${items[index].numberOfItems} items", style: GoogleFonts.jost(
                color: Colors.grey,
                fontSize: 20,
              ),),
            ],
          );
        },
        separatorBuilder: ((context, index) => const SizedBox(width: 20)),
        itemCount: items.length,
      ),
    );
  }
}
