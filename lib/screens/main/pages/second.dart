import 'package:fl_youngsim_blog/screens/dimensions.dart';
import 'package:fl_youngsim_blog/screens/main/components/shadow_text.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contentHeight =
        MediaQuery.of(context).size.height - titleHeight - menuHeight;
    return Container(
      width: double.infinity,
      height: contentHeight,
      color: Colors.red,
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
                'assets/images/002.jpeg',
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShadowText(text: '별이 이쁘다'),
                  ShadowText(text: '레미 이쁘다'),
                  ShadowText(text: '완전 사랑스럽다.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
