import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final double size;
  
  MyButton({
    super.key, 
    required this.onPressed,
    this.icon = Icons.check,
    this.size = 55.0, // Increased default size
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      shape: CircleBorder(),
      minWidth: size, // Controls width
      height: size,    // Controls height
      child: Icon(
        icon,
        size: size * 0.6, // Scale icon proportionally
      ),
    );
  }
}