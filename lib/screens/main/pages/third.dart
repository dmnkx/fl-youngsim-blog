import 'package:fl_youngsim_blog/screens/dimensions.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contentHeight =
        MediaQuery.of(context).size.height - titleHeight - menuHeight;
    return Container(
      width: double.infinity,
      height: contentHeight,
      color: Colors.green,
      child: Text('Hello'),
    );
  }
}
