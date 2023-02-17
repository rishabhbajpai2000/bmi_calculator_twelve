import 'package:flutter/material.dart';
import 'constants.dart';

class icon_content extends StatelessWidget {
  const icon_content({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

