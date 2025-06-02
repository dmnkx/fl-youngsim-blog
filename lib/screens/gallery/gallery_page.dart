import 'package:fl_youngsim_blog/screens/gallery/gallery_page_viewmodel.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final viewModel = GalleryPageViewModel();
  
  @override
  void initState() {
    super.initState();
    viewModel.init();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Gallery'));
  }
}
