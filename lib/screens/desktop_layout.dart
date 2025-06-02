import 'package:fl_youngsim_blog/screens/dimensions.dart';
import 'package:fl_youngsim_blog/screens/main/main_page.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 50),
            Image.asset('assets/images/logo.jpeg', height: 50),
          ],
        ),
        centerTitle: false,
        toolbarHeight: titleHeight,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(menuHeight),
          child: Container(
            height: 100,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 50,
                children: [
                  SizedBox(width: 0),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: MainPage(),
    );
  }
}
