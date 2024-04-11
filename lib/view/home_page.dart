import 'package:flutter/material.dart';
import 'package:trippldee/view/common_widgets.dart/country_state_widget.dart';
import 'package:trippldee/view/common_widgets.dart/display_username.dart';

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
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            customGapFunction("Task 1"),
            const CustomDropdownWidget(),
            const SizedBox(height: 12),
            customGapFunction("Task 2"),
            const CountryStateDropdown(),
            customGapFunction("Task 3"),
            const DisplayName(
              firstName: "Abhijith",
              secondName: "VM",
              prefix: "Mr",
              suffix: "Thrissur",
            )
          ]),
        ),
      ),
    );
  }
}

Widget customGapFunction(String task) => Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Text(task),
    );
