import 'package:flutter/material.dart';

class HomepageS extends StatelessWidget {
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
