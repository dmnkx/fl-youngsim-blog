import 'package:fl_youngsim_blog/screens/contact/contact_page_viewmodel.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final viewModel = ContactPageViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.init();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Contact'));
  }
}
