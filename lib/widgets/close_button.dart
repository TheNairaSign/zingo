import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClosedButton extends StatelessWidget {
  const ClosedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: SvgPicture.asset(
          "assets/svg/close.svg",
          height: 30,
        ),
    );
  }
}
