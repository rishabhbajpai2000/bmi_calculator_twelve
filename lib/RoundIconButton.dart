import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.icon, required this.onPressed});

  final IconData? icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F6E),
      onPressed: onPressed,
    );
  }
}