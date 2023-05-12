import 'package:flutter/material.dart';

class ThickContaiher extends StatelessWidget {
  const ThickContaiher({super.key, this.isColor});

  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5,
          color: isColor == null ? Colors.white : const Color(0xff8accf7),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
