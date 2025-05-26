import 'package:fl_youngsim_blog/screens/side_drawer.dart';
import 'package:flutter/material.dart';

class IntroduceScreen extends StatelessWidget {
  const IntroduceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('자기소개'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: SideDrawer(),
      body: Center(child: Text('자기소개 페이지입니다.')),
    );
  }
}
