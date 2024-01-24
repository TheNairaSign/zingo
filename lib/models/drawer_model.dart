import 'package:flutter/material.dart';
import 'package:zingo/pages/checkout_page.dart';
import 'package:zingo/pages/home_page.dart';
import 'package:zingo/pages/start_page.dart';

class MenuItemModel {
  String title;
  void Function(BuildContext context) onPressed;
  final int delay;

  MenuItemModel({
    required this.title,
    required this.onPressed,
    required this.delay,
  });

  List<Widget> pages = [
    
  ];


  static List<MenuItemModel> get itemModel {
    List<MenuItemModel> menuModel = [];

    menuModel.add(
      MenuItemModel(
        title: "Home",
        onPressed: (context) {
          debugPrint("Home");
          Navigator.of(context).pop();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartPage()));
        },
        delay: 500,
      ),
    );
    menuModel.add(
      MenuItemModel(
        title: "Shop",
        onPressed: (context) {
          debugPrint("Shop");
          Navigator.of(context).pop();
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const HomePage())));
        },
        delay: 1000
      ),
    );
    menuModel.add(
      MenuItemModel(
        title: "Checkout",
        onPressed: (context) {
          debugPrint("Checkout");
          Navigator.of(context).pop();
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CheckoutPage()));
        },
        delay: 1500,
      ),
    );
    menuModel.add(
      MenuItemModel(
        title: "Contact",
        onPressed: (context) {
          debugPrint("Contact");
        },
        delay: 2000
      ),
    );
    return menuModel;
  }
}
