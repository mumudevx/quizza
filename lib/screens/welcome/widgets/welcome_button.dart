import 'package:flutter/material.dart';

import '../constants/styles.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, '/quiz'),
      child: const Text(
        'Start Quiz',
        style: TextStyle(
          color: kStartButtonTextColor,
          fontSize: kStartButtonTextFontSize,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: kStartButtonColor,
        onPrimary: kStartButtonClickColor,
        padding: kStartButtonPadding,
        splashFactory: InkRipple.splashFactory,
      ),
    );
  }
}
