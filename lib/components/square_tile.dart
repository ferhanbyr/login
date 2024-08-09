import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 237, 232, 232),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color.fromARGB(255, 248, 247, 247))),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 70,
          ),
        ],
      ),
    );
  }
}
