import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(),
    );
  }
}
