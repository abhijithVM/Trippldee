import 'package:flutter/material.dart';

import 'common_widgets.dart/dropdown_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(3, (index) => const CustomDropdownWidget()),
        ),
      ),
    );
  }
}
