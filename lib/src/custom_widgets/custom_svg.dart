import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CustomSvg extends StatelessWidget {
  String? name;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/$name.svg",
      color: color,
    );
  }

  CustomSvg({
    this.name,
    this.color,
  });
}
