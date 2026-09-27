import 'package:durosy/core/constants/styles.dart';
import 'package:flutter/material.dart';

class VideosView extends StatelessWidget {
    final String lessonTitle;

  const VideosView({super.key, required this.lessonTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lessonTitle, style: AppStyles.textStyle18)),
      body: Center(child: Text('No Videos Yet', style: AppStyles.textStyle18)),
    );
  }
}
