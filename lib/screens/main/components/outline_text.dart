import 'package:flutter/material.dart';

class OutlineText extends StatelessWidget {
  const OutlineText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        foreground:
            Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 0.5
              ..color = Colors.white,
      ),
    );
  }
}
