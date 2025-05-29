import 'package:fl_youngsim_blog/screens/components/album_frame.dart';
import 'package:fl_youngsim_blog/screens/side_drawer.dart';
import 'package:fl_youngsim_blog/viewmodels/album_viewmodel.dart';
import 'package:flutter/material.dart';

class AlbumScreen extends StatelessWidget {
  AlbumScreen({super.key});

  final double spacing = 16.0;

  final AlbumViewModel albumViewModel = AlbumViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.jpeg', height: 40),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: spacing,
            runSpacing: spacing,
            alignment: WrapAlignment.center,
            children: [
              ...albumViewModel.albumImages.map(
                (album) => AlbumFrame(album: album),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
