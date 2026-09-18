import 'package:durosy/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo1.png'),
        title: Text('الدورات', style: AppStyles.textStyle20),
      ),
    );
  }
}
