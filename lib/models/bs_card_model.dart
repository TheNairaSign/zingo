class BSCardModel {
  final String imgPath, title;
  final double subTitle;

  BSCardModel({
    required this.imgPath,
    required this.title,
    required this.subTitle,
  });

  static List<BSCardModel> get cardItems {
    List<BSCardModel> items = [];

    items.add(
      BSCardModel(
      imgPath: "assets/blue-sofa.png",
      title: "Ruffle Trim Spot Wrap Dress",
      subTitle: 29.09,
    ));
    items.add(
      BSCardModel(
      imgPath: "assets/blue-sofa.png",
      title: "Leaf Floral Print Random",
      subTitle: 34.08,
    ));
    items.add(
      BSCardModel(
      imgPath: "assets/blue-sofa.png",
      title: "Drop Shoulder Geo Pattern",
      subTitle: 30.49,
    ));
    return items;
  }
}
