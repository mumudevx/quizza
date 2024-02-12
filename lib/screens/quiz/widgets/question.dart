import 'package:flutter/material.dart';

import '../constants/styles.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({
    Key? key,
    required this.questionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kQuestionTextMargin,
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: kQuestionTextSize,
        ),
      ),
    );
  }
}
