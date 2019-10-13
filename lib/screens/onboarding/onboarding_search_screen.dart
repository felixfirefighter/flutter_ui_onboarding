import 'package:flutter/material.dart';
import 'package:flutter_ui_checkout/components/base_onboarding.dart';

class OnboardingSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseOnboarding(
      imagePath: 'assets/images/searching.png',
      title: 'Smart Searching',
      description:
          'Search by cuisine type, date, number of people and many other criteria.',
    );
  }
}
