import 'package:flutter/material.dart';
import 'package:quiz_app/screens/game_over/game_over_screen.dart';

import 'screens/quiz/quiz_screen.dart';
import 'screens/welcome/welcome_screen.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        "/quiz": (context) => const QuizScreen(),
        "/game-is-over": (context) => const GameOverScreen(),
      },
    );
  }
}
