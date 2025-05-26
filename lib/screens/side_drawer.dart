import 'package:fl_youngsim_blog/screens/album_screen.dart';
import 'package:fl_youngsim_blog/screens/intro_screen.dart';
import 'package:fl_youngsim_blog/screens/introduce_screen.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  PageRouteBuilder _createFadeRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      transitionDuration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              '메뉴',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text('인트로'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                _createFadeRoute(IntroScreen()),
              );
            },
          ),
          ListTile(
            title: Text('자기소개'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                _createFadeRoute(IntroduceScreen()),
              );
            },
          ),
          ListTile(
            title: Text('앨범'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                _createFadeRoute(AlbumScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
