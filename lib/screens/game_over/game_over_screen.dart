import 'package:flutter/material.dart';

import './constants/styles.dart';

class GameOverScreen extends StatelessWidget {
  const GameOverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, int>;

    final score = arguments['score'] as int;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 120.0,
              ),
              const SizedBox(height: kDefaultMargin),
              const GameOverText(),
              const SizedBox(height: kDefaultMargin),
              Text(
                "Your score: $score",
                style: const TextStyle(
                  fontSize: kScoreTextFontSize,
                  color: kScoreTextColor,
                ),
              ),
              const SizedBox(height: kDefaultMargin),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text(
                  'Restart Quiz',
                  style: TextStyle(
                    color: kRestartButtonTextColor,
                    fontSize: kRestartButtonTextFontSize,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kRestartButtonColor,
                  padding: kRestartButtonPadding,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameOverText extends StatelessWidget {
  const GameOverText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Game is Over',
      style: TextStyle(
        fontSize: kGameIsOverTextFontSize,
      ),
    );
  }
}
