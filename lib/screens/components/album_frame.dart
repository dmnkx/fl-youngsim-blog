import 'package:fl_youngsim_blog/models/art_image.dart';
import 'package:flutter/material.dart';

class AlbumFrame extends StatelessWidget {
  const AlbumFrame({super.key, required this.album});
  final ArtImage album;
  final double spacing = 16.0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final value = ((screenWidth - (spacing * 3)) / 2);
    final condition = value > 400;
    final containerSize = condition ? 400.0 : value / 2;

    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(4)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.4),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.network(album.image, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
