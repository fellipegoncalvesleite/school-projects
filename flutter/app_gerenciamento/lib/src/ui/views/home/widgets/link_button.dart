import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onPressed;

  const LinkButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(text),
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFF225F58),
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
