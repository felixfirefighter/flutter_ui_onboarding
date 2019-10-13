import 'package:flutter/material.dart';
import 'package:flutter_ui_checkout/components/base_onboarding.dart';

class OnboardingRewardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseOnboarding(
      imagePath: 'assets/images/gift.png',
      title: 'Loayalty Points',
      description:
          'Earn points by making bookings and referring friends. Points can be used for discount at our partners',
    );
  }
}
