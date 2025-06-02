import 'package:fl_youngsim_blog/screens/main/main_page_viewmodel.dart';
import 'package:flutter/material.dart';

class MainPageIndicator extends StatelessWidget {
  const MainPageIndicator({
    super.key,
    required this.pageController,
    required this.viewModel,
  });
  final PageController pageController;
  final MainPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      top: 0,
      bottom: 0,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            viewModel.pages.length,
            (index) => Container(
              width: 12,
              height: 12,
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    pageController.hasClients && pageController.page != null
                        ? (pageController.page!.round() == index
                            ? Colors.white
                            : Colors.white.withAlpha(77))
                        : (index == 0
                            ? Colors.white
                            : Colors.white.withAlpha(77)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
