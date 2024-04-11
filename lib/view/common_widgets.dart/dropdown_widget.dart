import 'package:flutter/material.dart';

class CustomDropdownWidget extends StatefulWidget {
  const CustomDropdownWidget({super.key});

  @override
  CustomDropdownWidgetState createState() => CustomDropdownWidgetState();
}

class CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedItem,
      hint: const Text('More Actions'),
      onChanged: (String? newValue) {
        setState(() {
          _selectedItem = newValue;
        });
      },
      items: <String>['View', 'Edit', 'Send', 'Delete'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(
                color: value == 'Delete'
                    ? Colors.red
                    : null), // Set text color to red for 'Delete'
          ),
        );
      }).toList(),
    );
  }
}
