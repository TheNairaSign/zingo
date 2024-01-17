import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zingo/components/drawer.dart';
import 'package:zingo/models/best_sellers_model.dart';
import 'package:zingo/models/explore_model.dart';
import 'package:zingo/pages/show_all_page.dart';
import 'package:zingo/widgets/show_all.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ExploreModel> items = [];
  List<BestSellersModel> bestSell = [];

  void _exploreModel() {
    items = ExploreModel.exploreItems;
  }
  void _bestSellers() {
    bestSell = BestSellersModel.content;
  }

  @override
  void initState() {
    super.initState();
    _exploreModel();
    _bestSellers();
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Best Sellers",
                    style: GoogleFonts.jost(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                 const ShowAll(page: ShowAllPage())
                ],
              ),
              const SizedBox(height: 20,),
              bestSellersGrid()
            ],
          ),
        ),
      ),
    );
  }

  GridView bestSellersGrid() {
    return GridView.builder(
        shrinkWrap: true,
        controller: ScrollController(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          mainAxisExtent: 300
        ),
        itemCount: bestSell.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration( 
                    image: DecorationImage(
                      image: NetworkImage(bestSell[index].imageUrl),
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      ),
                    color: const Color(0xfff5f5f5),
                    // color: Colors.green,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child:  Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Icon(Icons.favorite_border),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        bestSell[index].desc,
                        maxLines: 2,
                        overflow: TextOverflow.visible,
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Text("\$${bestSell[index].price}", style: GoogleFonts.jost(
                fontSize: 20,
                color: Colors.grey
              ),),
              const SizedBox(height: 10,)
            ],
          );
        });
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
                    color: tappedIndex == index
                        ? const Color(0xfff4c670)
                        : Colors.white,
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
                items[index].category.name[0].toUpperCase() +
                    items[index].category.name.substring(1),
                style:
                    GoogleFonts.jost(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              Text(
                "${items[index].numberOfItems} items",
                style: GoogleFonts.jost(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ],
          );
        },
        separatorBuilder: ((context, index) => const SizedBox(width: 20)),
        itemCount: items.length,
      ),
    );
  }
}
