import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color appColor = Colors.red;
Color backgroundColor = Colors.deepPurple;
Color buttonColor = Colors.blue.shade300;
Color textColor = Colors.white;
Color iconColor = Colors.black;


TextStyle heading1 = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    fontSize: 26,
    color: Colors.white,);

TextStyle heading2 = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    fontSize: 28,
    color: Colors.white,);

TextStyle heading3 = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    fontSize: 22,
    color: Colors.white,);

TextStyle title1 = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    fontSize: 20,
    color: Colors.black,);

TextStyle title2 = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.black,);

TextStyle title3 = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    fontSize: 16,
    color: Colors.white,);

TextStyle subtitle1 = GoogleFonts.roboto(
    fontWeight: FontWeight.w300,
    fontSize: 14,
    color: Colors.black,);

TextStyle subtitle2 = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: Colors.white,);

TextStyle subtitle3 = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    fontSize: 10,
    color: Colors.black,);

Decoration roundedDec = BoxDecoration(
  borderRadius: BorderRadius.circular(30),
  color: appColor,
);

BoxShadow myShadow = BoxShadow(color: Colors.red);
List<BoxShadow> appBoxShadow = [
  BoxShadow(blurRadius: 1, color: Colors.grey.shade300),
];
