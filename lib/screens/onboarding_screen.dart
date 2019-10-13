import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_checkout/screens/onboarding/onboarding_calendar_screen.dart';
import 'package:flutter_ui_checkout/screens/onboarding/onboarding_reward_screen.dart';
import 'package:flutter_ui_checkout/screens/onboarding/onboarding_search_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var pageIndex = 0;
  var pages = [
    OnboardingSearchScreen(),
    OnboardingRewardScreen(),
    OnboardingCalendarScreen(),
  ];

  var pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: pageController,
                children: pages,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
              ),
            ),
            DotsIndicator(
              dotsCount: pages.length,
              position: pageIndex,
              decorator: DotsDecorator(
                activeColor: Colors.deepOrange,
              ),
            ),
            SizedBox(
              width: 180,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Colors.deepOrange,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      pageIndex == pages.length - 1 ? 'Got it!' : 'Next',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (pageIndex < pages.length - 1) {
                      pageController.nextPage(
                        curve: Curves.ease,
                        duration: Duration(
                          milliseconds: 200,
                        ),
                      );
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
