import 'package:durosy/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Durosy());
}

class Durosy extends StatelessWidget {
  const Durosy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView());
  }
}
