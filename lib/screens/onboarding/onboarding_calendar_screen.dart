import 'package:flutter/material.dart';
import 'package:flutter_ui_checkout/components/base_onboarding.dart';

class OnboardingCalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseOnboarding(
      imagePath: 'assets/images/calendar.png',
      title: 'Real-Time Availability',
      description:
          'Know availability and book confirmation immediately. No calls or emails required.',
    );
  }
}
