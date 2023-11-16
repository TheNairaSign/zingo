// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.black,
    this.fontColor = Colors.white,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;
  final Color color;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const ContinuousRectangleBorder(),
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.jost(
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
