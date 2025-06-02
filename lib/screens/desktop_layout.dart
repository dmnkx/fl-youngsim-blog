import 'package:fl_youngsim_blog/screens/contact/contact_page.dart';
import 'package:fl_youngsim_blog/screens/dimensions.dart';
import 'package:fl_youngsim_blog/screens/gallery/gallery_page.dart';
import 'package:fl_youngsim_blog/screens/introduce/introduce_page.dart';
import 'package:fl_youngsim_blog/screens/main/main_page.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
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
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png', height: 50),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
            child: Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _selectedIndex == 0 ? Colors.blue : Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
            child: Text(
              'Introduce',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _selectedIndex == 1 ? Colors.blue : Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
            child: Text(
              'Gallery',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _selectedIndex == 2 ? Colors.blue : Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 3;
              });
            },
            child: Text(
              'Contact',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _selectedIndex == 3 ? Colors.blue : Colors.black,
              ),
            ),
          ),
          SizedBox(width: 100),
        ],
        centerTitle: false,
        toolbarHeight: titleHeight,
      ),
      body: _getPage(),
    );
  }
}
