class BestSellersModel {
  String desc, imageUrl;
  double price;

  BestSellersModel({
    required this.desc,
    required this.price,
    required this.imageUrl
    }
  );

  static List<BestSellersModel> get content {
    List<BestSellersModel> contentItem = [];

    contentItem.add(BestSellersModel(
      desc: "Georg Jensen Minimal Clock",
      price: 34.10,
      imageUrl: "https://i0.wp.com/sklimited.com/wp-content/uploads/2020/01/pack___3587585-1200-0.png?fit=800%2C800&ssl=1",
    ));
    contentItem.add(BestSellersModel(
      desc: "Teapot with black tea",
      price: 29.54,
      imageUrl: "https://dhb3yazwboecu.cloudfront.net/1007//52152_TeteraArareNegra1500ml_1000X1000_l-.jpg",
    ));
    contentItem.add(BestSellersModel(
      desc: "Office chair",
      price: 22.44,
      imageUrl: "https://www.segals.com.au/wp-content/uploads/2020/08/Tribeca-black-chair-e1598595477615.jpg",
    ));
    contentItem.add(BestSellersModel(
      desc: "Georg Jensen Minimal Clock",
      price: 33.23,
      imageUrl: "https://dhb3yazwboecu.cloudfront.net/1007//52148_TeteraHamaSakuraNegro1000ml_1000X1000_l-.jpg",
    ));
    contentItem.add(BestSellersModel(
      desc: "Georg Jensen Minimal Clock",
      price: 34.12,
      imageUrl: "https://cupofte.ca/cdn/shop/products/cast-iron-teapot-set-343582.jpg?v=1686016213&width=493",
    ));
    contentItem.add(BestSellersModel(
      desc: "Georg Jensen Minimal Clock",
      price: 33.32,
      imageUrl: "https://www.bespokelights.co.uk/images/norfolk-outdoor-black-lamp-post-with-3-lights-p1275-2319_medium.jpg",
    ));
    return contentItem;
  }
}
