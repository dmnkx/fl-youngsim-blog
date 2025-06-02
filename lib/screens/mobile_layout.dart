import 'package:fl_youngsim_blog/screens/contact/contact_page.dart';
import 'package:fl_youngsim_blog/screens/gallery/gallery_page.dart';
import 'package:fl_youngsim_blog/screens/introduce/introduce_page.dart';
import 'package:fl_youngsim_blog/screens/main/main_page.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  int _selectedIndex = 0;

  Widget _getPage() {
    switch (_selectedIndex) {
      case 0:
        return MainPage();
      case 1:
        return IntroducePage();
      case 2:
        return GalleryPage();
      case 3:
        return ContactPage();
      default:
        return MainPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset('assets/images/logo.png', height: 50)),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Introduce'),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Gallery'),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _getPage(),
    );
  }
}
