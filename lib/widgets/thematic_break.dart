import 'package:flutter/material.dart';

class ThematicBreak extends StatelessWidget {
  final double margin;

  const ThematicBreak({
    Key? key,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      width: double.infinity,
      height: 1.0,
      color: Colors.white,
    );
  }
}
