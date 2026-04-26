import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, required this.onPressed, required this.addCount});

  final VoidCallback onPressed;
  final String addCount;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shadowColor: const Color.fromARGB(255, 165, 57, 57),
        elevation: 8,
      ),
      onPressed: onPressed,
      child: Text(
        addCount,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
