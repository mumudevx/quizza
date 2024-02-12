import 'package:flutter/material.dart';

import 'answer_box.dart';

class AnswerList extends StatefulWidget {
  final List<String> answerList;
  final int correctAnswerIndex;
  final int questionScore;

  final VoidCallback onAnswerSelected;
  final Function(int) onScoreChanged;

  const AnswerList({
    Key? key,
    required this.answerList,
    required this.correctAnswerIndex,
    required this.questionScore,
    required this.onAnswerSelected,
    required this.onScoreChanged,
  }) : super(key: key);

  @override
  State<AnswerList> createState() => _AnswerListState();
}

class _AnswerListState extends State<AnswerList> {
  bool areAnswersLocked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: generateAnswers(),
    );
  }

  List<AnswerBox> generateAnswers() {
    List<AnswerBox> answers = [];

    for (var i = 0; i < widget.answerList.length; i++) {
      var isCorrect = widget.correctAnswerIndex == i;

      answers.add(
        AnswerBox(
          answerText: widget.answerList[i],
          isCorrect: isCorrect,
          questionScore: widget.questionScore,
          isLocked: areAnswersLocked,
          onAnswerSelected: widget.onAnswerSelected,
          onScoreChanged: (score) => widget.onScoreChanged(score),
          onAnswersLocked: () => toggleAnswersLock(),
        ),
      );
    }

    return answers;
  }

  void toggleAnswersLock() => setState(() {
        areAnswersLocked = !areAnswersLocked;
      });
}
