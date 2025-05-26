import 'package:fl_youngsim_blog/screens/side_drawer.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('인트로'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: SideDrawer(),
      body: Center(child: Text('인트로 페이지입니다.')),
    );
  }
}
