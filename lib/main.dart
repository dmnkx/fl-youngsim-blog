import 'package:fl_youngsim_blog/screens/desktop_layout.dart';
import 'package:fl_youngsim_blog/screens/mobile_layout.dart';
import 'package:fl_youngsim_blog/screens/response_layout.dart';
import 'package:fl_youngsim_blog/themes/theme.dart';
import 'package:fl_youngsim_blog/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: IntroScreen(),
      home: ResponseLayout(
        mobileLayout: MobileLayout(),
        desktopLayout: DesktopLayout(),
      ),
      theme: lightMode,
      darkTheme: lightMode,
    );
  }
}
