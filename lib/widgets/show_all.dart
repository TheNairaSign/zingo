import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowAll extends StatelessWidget {
  const ShowAll({super.key, required this.page});
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => page)),
      icon: Text(
        "Show all",
        style: GoogleFonts.jost(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      label: const Icon(
        Icons.arrow_right,
        color: Colors.black,
        size: 25,
      ),
    );
  }
}
