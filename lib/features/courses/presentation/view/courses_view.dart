import 'package:durosy/core/constants/styles.dart';
import 'package:durosy/features/courses/presentation/view/widgets/info_card.dart';
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
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.72,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => InfoCard(
          imageUrl: '',
          title: 'الوحدة الاولي ',
          subtitle: 'وصف الدوره ',
          price: '0 ',
        ),
      ),
    );
  }
}
