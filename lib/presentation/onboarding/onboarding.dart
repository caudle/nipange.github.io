import 'package:flutter/material.dart';
import 'package:nipange/presentation/onboarding/content.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          // app name
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                'napanga',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),

          // pageview
          Expanded(flex: 3, child: ContentWidget()),

          // buttons
          _buildButtons(context),
        ],
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text('Skip'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColorLight)),
            ),
            Row(
              children: [
                Text('Swipe'),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).primaryColorLight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
