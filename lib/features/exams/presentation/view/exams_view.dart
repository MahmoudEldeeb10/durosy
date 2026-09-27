import 'package:durosy/core/constants/styles.dart';
import 'package:flutter/material.dart';

class ExamsView extends StatelessWidget {
  final String lessonTitle;

  const ExamsView({super.key, required this.lessonTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lessonTitle, style: AppStyles.textStyle18)),
      body: Center(child: Text('No Exams Yet', style: AppStyles.textStyle18)),
    );
  }
}
