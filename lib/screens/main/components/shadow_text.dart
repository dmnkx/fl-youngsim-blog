import 'package:flutter/material.dart';

class ShadowText extends StatelessWidget {
  const ShadowText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        shadows: [
          Shadow(color: Colors.white, offset: Offset(1, 1), blurRadius: 5),
        ],
      ),
    );
  }
}
