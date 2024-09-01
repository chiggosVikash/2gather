import 'package:flutter/material.dart';

class HomepageS extends StatelessWidget {
  static const routeAddress = '/';
  static const routeName = 'Homepage';
  const HomepageS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BackMate'),
      ),
      body: const Center(
        child: Text('Welcome to BackMate!'),
      ),
    );
  }
}
