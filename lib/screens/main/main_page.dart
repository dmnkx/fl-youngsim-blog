import 'package:fl_youngsim_blog/screens/main/components/main_page_indicator.dart';
import 'package:fl_youngsim_blog/screens/main/main_page_viewmodel.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController(initialPage: 0);
  final viewModel = MainPageViewModel();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {});
    });
    viewModel.init();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey[500]!, Colors.grey[900]!],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              setState(() {});
            },
            children: List.generate(
              viewModel.pages.length,
              (index) => viewModel.pages[index],
            ),
          ),
        ),
        MainPageIndicator(
          pageController: _pageController,
          viewModel: viewModel,
        ),
      ],
    );
  }
}
