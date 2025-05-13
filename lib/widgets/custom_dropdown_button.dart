import 'package:flutter/material.dart';

class CustomDropdownButtonClass extends StatelessWidget {
  List<String> values;
  double width;
  CustomDropdownButtonClass({required this.values, required this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: DropdownButton(
        value: values.first,
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
        items:
            values
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
        onChanged: (_) {},
      ),
    );
  }
}
