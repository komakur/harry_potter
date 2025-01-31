import 'package:flutter/material.dart';

class HomeStateWrapper extends StatelessWidget {
  const HomeStateWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
