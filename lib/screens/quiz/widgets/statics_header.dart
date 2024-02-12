import 'package:flutter/material.dart';

import '../constants/styles.dart';

class StaticsHeader extends StatelessWidget {
  final int score;
  final int time;

  const StaticsHeader({
    Key? key,
    required this.score,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Countdown(time: time),
        Score(score: score),
      ],
    );
  }
}

class Score extends StatelessWidget {
  final int score;

  const Score({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.grade,
          size: kScoreIconSize,
        ),
        const SizedBox(width: kScoreIconMargin),
        Text(
          score.toString(),
          style: const TextStyle(
            fontSize: kScoreTextSize,
          ),
        ),
      ],
    );
  }
}

class Countdown extends StatelessWidget {
  final int time;

  const Countdown({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.timelapse,
          size: kTimerIconSize,
        ),
        const SizedBox(width: kTimerIconMargin),
        Text(
          "$time seconds",
          style: const TextStyle(
            fontSize: kTimerTextSize,
          ),
        ),
      ],
    );
  }
}
