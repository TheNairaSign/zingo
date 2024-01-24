// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {

    return AppBar(
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
                    Icons.shopping_bag_outlined,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: const Icon(
                    Icons.favorite_border,
                  ),
                )
              ],
            ),
          ),
        ],
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
