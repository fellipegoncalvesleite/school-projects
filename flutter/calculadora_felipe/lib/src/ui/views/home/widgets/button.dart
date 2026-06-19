import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final double width;
  final void Function()? onPressed;

  const Button({
    super.key,
    required this.text,
    this.backgroundColor,
    this.width = 80,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor ?? const Color(0xFFFFFFFF),
        foregroundColor: const Color(0xFF1F1F1F),
        fixedSize: Size(width, 80),
        side: const BorderSide(color: Color(0xFFE1E1E1)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
      ),
    );
  }
}
