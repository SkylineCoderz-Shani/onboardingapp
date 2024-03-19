import 'package:flutter/material.dart';

class CustomOTPTextField extends StatefulWidget {
  final int fields;
  final double fieldWidth;
  final double fieldHeight;
  final Function(String) onChanged;

  const CustomOTPTextField({
    Key? key,
    required this.fields,
    required this.fieldWidth,
    required this.fieldHeight,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomOTPTextFieldState createState() => _CustomOTPTextFieldState();
}

class _CustomOTPTextFieldState extends State<CustomOTPTextField> {
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(widget.fields, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        widget.fields,
            (index) => SizedBox(
          width: widget.fieldWidth,
          height: widget.fieldHeight,
          child: TextField(
            focusNode: _focusNodes[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            onChanged: (value) {
              widget.onChanged(value);
              if (value.isNotEmpty && index < widget.fields - 1) {
                _focusNodes[index].unfocus();
                FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
              }
            },
            decoration: InputDecoration(
              counter: Offstage(),
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 1),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
