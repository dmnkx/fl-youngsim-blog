import 'package:fl_youngsim_blog/screens/side_drawer.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.jpeg', height: 40),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: SideDrawer(),
      body: Center(child: Text('인트로 페이지입니다.')),
    );
  }
}
