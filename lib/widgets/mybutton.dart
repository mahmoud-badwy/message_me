import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final String text;
  final double padding;

  const MyButton(
      {super.key,
      required this.color,
      required this.onPressed,
      required this.text,
      required this.padding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: color,
        elevation: 5,
        child: MaterialButton(
          height: 42,
          minWidth: 200,
          onPressed: () => onPressed(),
          child: Text(text, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
