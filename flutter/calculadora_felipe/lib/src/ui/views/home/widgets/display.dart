import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final TextEditingController controller;

  const Display({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 40, color: Colors.white),
        maxLines: 3,
        minLines: 3,
        textAlign: TextAlign.end,
        keyboardType: TextInputType.number,
        textAlignVertical: TextAlignVertical.bottom,
        readOnly: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 223, 222, 222),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.black, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 54, 54, 54),
              width: 3,
            ),
          ),
        ),
      ),
    );
  }
}
