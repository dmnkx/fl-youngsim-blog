import 'package:fl_youngsim_blog/screens/side_drawer.dart';
import 'package:flutter/material.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('앨범'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: SideDrawer(),
      body: Center(child: Text('앨범 페이지입니다.')),
    );
  }
}
