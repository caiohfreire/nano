import 'package:flutter/material.dart';
import 'package:nano/assets/colors/colors.dart';

class PickerWidget extends StatefulWidget {
  const PickerWidget({Key? key}) : super(key: key);

  @override
  _PickerWidgetState createState() => _PickerWidgetState();
}

class _PickerWidgetState extends State<PickerWidget> {
  final List<String> options = [
    'Today',
    'This Week',
    'This Month',
    'Overdue',
    'Completed'
  ];
  String selectedValue = 'Today';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: XColors.terrary,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: XColors.grey400,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          dropdownColor: XColors.terrary,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
