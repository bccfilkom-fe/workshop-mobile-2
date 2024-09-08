import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final Color? bColor;
  final Color? tColor;
  final double? width;
  final double? height;

  const Buttons({
    super.key,
    required this.text,
    required this.onClicked,
    this.bColor,
    this.tColor,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = bColor ?? Colors.pink;
    Color textColor = tColor ?? Colors.white;
    double widths = width ?? 345;
    double heights = height ?? 48;

    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          minimumSize: WidgetStateProperty.all<Size>(Size(widths, heights)),
        ),
        onPressed: onClicked,
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
