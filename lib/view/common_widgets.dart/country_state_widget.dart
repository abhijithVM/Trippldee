import 'package:flutter/material.dart';

class CountryStateDropdown extends StatefulWidget {
  const CountryStateDropdown({super.key});

  @override
  CountryStateDropdownState createState() => CountryStateDropdownState();
}

class CountryStateDropdownState extends State<CountryStateDropdown> {
  String _selectedCountry = 'IN';
  String _selectedState = 'KA';

  final Map<String, List<String>> _stateMap = {
    'IN': ['KA', 'KL', 'TN', 'MH'],
    'US': ['AL', 'DE', 'GA'],
    'CA': ['ON', 'QC', 'BC'],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton<String>(
          value: _selectedCountry,
          onChanged: (String? newValue) {
            setState(() {
              _selectedCountry = newValue!;

              // Check if the selected state is valid for the new country
              if (!_stateMap[newValue]!.contains(_selectedState)) {
                // If not valid, update selected state to the first state of the new country
                _selectedState = _stateMap[newValue]!.first;
              }
            });
          },
          items: ['IN', 'US', 'CA'].map((String country) {
            return DropdownMenuItem<String>(
              value: country,
              child: Text(country),
            );
          }).toList(),
        ),
        const SizedBox(height: 20),
        DropdownButton<String>(
          value: _selectedState,
          onChanged: (String? newValue) {
            setState(() {
              _selectedState = newValue!;
            });
          },
          items: _stateMap[_selectedCountry]?.map((String state) {
                return DropdownMenuItem<String>(
                  value: state,
                  child: Text(state),
                );
              }).toList() ??
              [],
        ),
      ],
    );
  }
}
