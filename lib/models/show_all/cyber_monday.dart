class CyberMonday {
  String productImage, productName;
  double productPrice;

  CyberMonday({
    required this.productImage,
    required this.productName,
    required this.productPrice,
  });

  static List<CyberMonday> get cmItems {
    List<CyberMonday> items = [];

    items.add(
      CyberMonday(
      productImage: "https://www.i4mariani.com/wp-content/uploads/2021/03/Nancy02-M-HR_bis-1.jpg",
      productName: "Nancy Chair",
      productPrice: 278.9,
    ));
    items.add(
      CyberMonday(
      productImage: "https://image.architonic.com/pro2-2/20246240/mbrace-rocking-chair-seville-cushion-pro-sq-arcit18.jpg",
      productName: "Rocking Chair",
      productPrice: 222.45,
    ));
    items.add(
      CyberMonday(
      productImage: "https://image.architonic.com/img_pro2-1/100/3788/woodenchair0001.jpg",
      productName: "Wooden Chair",
      productPrice: 145.89,
    ));
    items.add(
      CyberMonday(
      productImage: "https://image.architonic.com/pro2-2/20730770/cask--t090-a-cask-cd-pro-b-arcit18.jpg",
      productName: "Cask Armchair",
      productPrice: 89.99,
    ));
    items.add(
      CyberMonday(
      productImage: "https://cdn.boatinternational.com/convert/bi_prd/bi/library_images/9IKx8VtKRu6SsSwgWxOF_louis-vuitton-tambour-all-black-table-clock-gmt.jpg/r%5Bwidth%5D=1920/9IKx8VtKRu6SsSwgWxOF_louis-vuitton-tambour-all-black-table-clock-gmt.webp",
      productName: "LV Table Clock",
      productPrice: 300.67,
    ));
    return items;
  }
}
