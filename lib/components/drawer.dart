import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zingo/models/drawer_model.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  List<MenuItemModel> menuItem = [];

  void get menuModel {
    menuItem = MenuItemModel.itemModel;
  }

  @override
  void initState() {
    super.initState();
    menuModel;
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            curve: Curves.decelerate,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: SvgPicture.asset("assets/svg/close.svg"),
            ),
          ),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: GestureDetector(
                    onTap: () {
                      menuItem[index].onPressed(context);
                    },
                    child: FadeInLeft(
                      duration: const Duration(seconds: 1),
                      delay: Duration(milliseconds: menuItem[index].delay),
                      child: Text(
                        menuItem[index].title,
                        style: GoogleFonts.jost(),
                        textScaleFactor: 3,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: ((context, index) => const SizedBox(height: 20)),
              itemCount: menuItem.length,
            ),
          )
        ],
      ),
    );
  }
}
