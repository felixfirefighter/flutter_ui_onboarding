import 'package:flutter/material.dart';

class BaseOnboarding extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  BaseOnboarding({
    this.imagePath,
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 48.0,
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            height: 240,
          ),
          Padding(
            padding: EdgeInsets.all(12),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
