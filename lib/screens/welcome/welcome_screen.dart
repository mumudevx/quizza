import 'package:flutter/material.dart';

import 'constants/styles.dart';
import 'widgets/welcome_button.dart';
import 'widgets/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizza'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 120.0,
            ),
            const SizedBox(
              height: kDefaultMarginHeight,
            ),
            const WelcomeText(),
            const SizedBox(height: kDefaultMarginHeight),
            const WelcomeButton(),
          ],
        ),
      ),
    );
  }
}
