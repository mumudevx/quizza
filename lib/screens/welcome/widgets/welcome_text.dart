import 'package:flutter/cupertino.dart';

import '../constants/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome to Quizza',
      style: TextStyle(fontSize: kWelcomeTextFontSize),
    );
  }
}
