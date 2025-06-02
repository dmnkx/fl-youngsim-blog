import 'package:fl_youngsim_blog/screens/introduce/introduce_page_viewmodel.dart';
import 'package:flutter/material.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage({super.key});

  @override
  State<IntroducePage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  final viewModel = IntroducePageViewModel();
  @override
  void initState() {
    super.initState();
    viewModel.init();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text('Introduce')]));
  }
}
