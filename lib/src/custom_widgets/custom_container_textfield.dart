import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomStyledTextField extends StatefulWidget {
  final String hintText;
  final double containerHeight;
  final double containerWidth;
  final double borderRadius;
  final double boxShadowSpreadRadius;
  final double boxShadowBlurRadius;
  final Offset boxShadowOffset;
  final double textFieldBorderRadius;
  final EdgeInsetsGeometry contentPadding;
  final Color containerColor;
  final Color boxShadowColor;
  final Color textFieldBorderColor;
  final bool isPasswordField;
  final TextEditingController? controller; // Add this line

  const CustomStyledTextField({
    Key? key,
    required this.hintText,
    this.containerHeight = 45,
    this.containerWidth = double.infinity,
    this.borderRadius = 10,
    this.boxShadowSpreadRadius =0,
    this.boxShadowBlurRadius = 0,
    this.boxShadowOffset = const Offset(0, 0),
    this.textFieldBorderRadius = 25,
    this.contentPadding = const EdgeInsets.all(12.0),
    this.containerColor = Colors.white,
    this.boxShadowColor = const Color(0xFFA0A0A0),
    this.textFieldBorderColor = Colors.white,
    this.isPasswordField = false,
    this.controller, // Add this line
  }) : super(key: key);

  @override
  _CustomStyledTextFieldState createState() => _CustomStyledTextFieldState();
}

class _CustomStyledTextFieldState extends State<CustomStyledTextField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.containerHeight,
      width: widget.containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        boxShadow: [
          BoxShadow(
            color: widget.boxShadowColor.withOpacity(0.4),
            spreadRadius: widget.boxShadowSpreadRadius,
            blurRadius: widget.boxShadowBlurRadius,
            offset: widget.boxShadowOffset,
          ),
        ],
        color: widget.containerColor,
      ),
      child: TextFormField(
        controller: widget.controller, // Add this line
        obscureText: widget.isPasswordField && _isHidden,
        decoration: InputDecoration(
          hintText: widget.hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.textFieldBorderRadius),
            borderSide: BorderSide(color: widget.textFieldBorderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.textFieldBorderRadius),
            borderSide: BorderSide(color: widget.textFieldBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.textFieldBorderRadius),
            borderSide: BorderSide(color: Colors.transparent), // Set border color to transparent
          ),
          contentPadding: widget.contentPadding,
          suffixIcon: widget.isPasswordField
              ? IconButton(
            onPressed: _toggleVisibility,
            icon: Icon(
              _isHidden ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
          )
              : null,
        ),
      ),
    ).marginSymmetric(vertical: 5.sp);
  }

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}