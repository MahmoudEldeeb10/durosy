import 'package:flutter/material.dart';

void main() {
  runApp(const Durosy());
}

class Durosy extends StatelessWidget {
  const Durosy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Durosy')),
        body: const Center(child: Text('Hello World!')),
      ),
    );
  }
}
