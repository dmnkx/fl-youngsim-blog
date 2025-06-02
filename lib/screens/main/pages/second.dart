import 'package:fl_youngsim_blog/screens/dimensions.dart';
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
            Image.asset(
              'assets/images/002.jpeg',
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Text(
                '별이 이쁘다',
                style: TextStyle(
                  fontSize: 32,
                  shadows: [Shadow(color: Colors.white, offset: Offset(1, 1))],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
