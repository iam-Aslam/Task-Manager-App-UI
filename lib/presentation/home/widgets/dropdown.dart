import 'package:flutter/material.dart';

const List<String> list = <String>['Weekly', 'Daily', 'Monthly', 'Yearly'];

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Colors.grey,
      ),
      elevation: 16,
      style: const TextStyle(color: Colors.grey),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
