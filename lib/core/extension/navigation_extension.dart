import 'package:flutter/material.dart';

extension NavigationExtensions on BuildContext {
  void navigateToPage({required String page}) {
    Navigator.pushNamed(this, page);
  }

  void navigateToAndReplacement({required String page}) {
    Navigator.pushReplacementNamed(this, page);
  }

  void navigateToAndRemoveUntil({required String page}) {
    Navigator.pushNamedAndRemoveUntil(this, page, (route) => false);
  }

  void pop() {
    Navigator.canPop(this);
  }
}
