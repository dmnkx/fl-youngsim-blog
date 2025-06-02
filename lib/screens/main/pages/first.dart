import 'package:fl_youngsim_blog/screens/dimensions.dart';
import 'package:fl_youngsim_blog/screens/main/components/outline_text.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contentHeight =
        MediaQuery.of(context).size.height - titleHeight - menuHeight;

    return Container(
      width: double.infinity,
      height: contentHeight,
      color: Colors.black,
      child: Center(
        child: Stack(
          children: [
            ShaderMask(
              shaderCallback:
                  (bounds) => LinearGradient(
                    colors: [
                      Colors.black.withValues(alpha: 0.8),
                      Colors.black.withValues(alpha: 0.2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
              blendMode: BlendMode.darken,
              child: Image.asset(
                'assets/images/001.jpeg',
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: OutlineText(text: '별이 이쁘다'),
            ),
          ],
        ),
      ),
    );
  }
}
