enum Category { chairs, tables, sofa, lamps, clocks }

class ExploreModel {
  final String categoryImage;
  final int numberOfItems;
  final Category category;

  ExploreModel({
    required this.categoryImage,
    required this.numberOfItems,
    required this.category,
  });

  static List<ExploreModel> get exploreItems {
    List<ExploreModel> items = [];
    const png = "assets/png";

    items.add(
      ExploreModel(
        categoryImage: "$png/sofa.png",
        numberOfItems: 1126,
        category: Category.sofa,
      ),
    );
    items.add(
      ExploreModel(
        categoryImage: "$png/light.png",
        numberOfItems: 442,
        category: Category.lamps,
      ),
    );
    items.add(
      ExploreModel(
        categoryImage: "$png/table.png",
        numberOfItems: 1865,
        category: Category.tables,
      ),
    );
    items.add(
      ExploreModel(
        categoryImage: "$png/wall-clock.png",
        numberOfItems: 805,
        category: Category.clocks,
      ),
    );
    items.add(
      ExploreModel(
        categoryImage: "$png/sofa2.png",
        numberOfItems: 670,
        category: Category.chairs
      ),
    );
    return items;
  }
}
