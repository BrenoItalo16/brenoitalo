import 'package:flutter/material.dart';

class CircleIconButtom extends StatelessWidget {
  final double buttonLength;
  final IconData iconButton;
  final VoidCallback onPressed;
  const CircleIconButtom({
    Key? key,
    required this.buttonLength,
    required this.iconButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: IconButton(
        icon: Icon(
          iconButton,
          size: buttonLength,
        ),
        onPressed: onPressed,
        color: Colors.white54,
      ),
    );
  }
}
