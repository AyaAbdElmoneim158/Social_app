import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    required this.hintText,
    this.onChanged,
    super.key,
  });
  final Function(String)? onChanged;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // textAlign: TextAlign.center,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        border: outLineInputBorder(),
        enabledBorder:
            outLineInputBorder(color: const Color.fromARGB(255, 162, 167, 190)),
        focusedBorder:
            outLineInputBorder(color: const Color(0xff2e386b), width: 2),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder(
      {Color color = Colors.transparent, double width = 1.0}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: width,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    );
  }
}
