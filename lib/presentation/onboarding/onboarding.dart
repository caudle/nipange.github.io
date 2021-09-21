import 'package:flutter/material.dart';
import 'package:nipange/presentation/onboarding/content.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            // app name
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  'nipange',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
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
                      Theme.of(context).primaryColorLight),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
                  elevation: MaterialStateProperty.all(0)),
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
