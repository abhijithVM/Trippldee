import 'package:flutter/material.dart';
import 'package:trippldee/view/common_widgets.dart/country_state_widget.dart';

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
      body: const SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomDropdownWidget(),
            CountryStateDropdown(),
          ]),
        ),
      ),
    );
  }
}
