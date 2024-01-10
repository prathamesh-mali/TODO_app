import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple[100],
            foregroundColor: Colors.black87,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(text));
  }
}
