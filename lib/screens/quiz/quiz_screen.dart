import 'dart:async';

import 'package:flutter/material.dart';

import 'constants/styles.dart';
import 'widgets/answer_list.dart';
import 'widgets/statics_header.dart';
import 'widgets/question.dart';
import '../../widgets/thematic_break.dart';
import '../../models/question_model.dart';

const oneSecond = Duration(seconds: 1);

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int currentScore = 0;
  int currentTime = 15;

  late Timer timer;

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //BUG: Infinite loop
    //startCountdown();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kStandardPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StaticsHeader(score: currentScore, time: currentTime),
              const ThematicBreak(margin: 25.0),
              Question(
                questionText: quizBank[currentQuestionIndex].questionText,
              ),
              AnswerList(
                answerList: quizBank[currentQuestionIndex].answerList,
                correctAnswerIndex:
                    quizBank[currentQuestionIndex].correctAnswerIndex,
                questionScore: quizBank[currentQuestionIndex].score,
                onAnswerSelected: () {
                  nextQuestion();
                },
                onScoreChanged: (score) => changeScore(score),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void nextQuestion() {
    if (currentQuestionIndex == quizBank.length - 1) {
      Navigator.pushNamed(
        context,
        '/game-is-over',
        arguments: {'score': currentScore},
      );
      return;
    }

    setState(() {
      currentQuestionIndex++;
    });
  }

  void changeScore(int score) {
    setState(() {
      currentScore += score;
    });
  }

  void startCountdown() {
    timer = Timer.periodic(
      oneSecond,
      (timer) {
        if (currentTime == 0) {
          setState(() {
            nextQuestion();
            timer.cancel();
          });
        } else {
          setState(() {
            currentTime--;
            print(currentTime);
          });
        }
      },
    );
  }
}
