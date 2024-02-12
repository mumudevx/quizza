import 'package:flutter/material.dart';

import '../constants/styles.dart';

class AnswerBox extends StatefulWidget {
  final String answerText;
  final bool isCorrect;
  final int questionScore;
  final bool isLocked;

  final VoidCallback onAnswerSelected;
  final Function(int) onScoreChanged;
  final Function() onAnswersLocked;

  const AnswerBox({
    Key? key,
    required this.answerText,
    required this.isCorrect,
    required this.questionScore,
    required this.isLocked,
    required this.onAnswerSelected,
    required this.onScoreChanged,
    required this.onAnswersLocked,
  }) : super(key: key);

  @override
  State<AnswerBox> createState() => _AnswerBoxState();
}

class _AnswerBoxState extends State<AnswerBox> {
  Color answerColor = kAnswerBoxColor;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.isLocked,
      child: GestureDetector(
        onTap: () {
          widget.onAnswersLocked();

          Future.delayed(const Duration(milliseconds: 2000), () {
            widget.onAnswerSelected();
            resetColor();
            widget.onAnswersLocked();
          });

          if (widget.isCorrect) {
            setState(() {
              answerColor = Colors.green.shade800;
            });
            widget.onScoreChanged(widget.questionScore);
          } else {
            setState(() {
              answerColor = Colors.red.shade800;
            });
          }
        },
        child: Container(
          padding: kAnswerBoxPadding,
          margin: kAnswerBoxMargin,
          width: kAnswerBoxWidth,
          child: Text(
            widget.answerText,
            style: const TextStyle(
              color: kAnswerTextColor,
              fontSize: kAnswerTextFontSize,
              fontWeight: kAnswerTextFontWeight,
            ),
          ),
          color: answerColor,
        ),
      ),
    );
  }

  void resetColor() => setState(() {
        answerColor = kAnswerBoxColor;
      });
}
