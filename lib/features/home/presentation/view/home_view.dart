import 'package:durosy/core/constants/styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/images/logo1.png'),

          title: Text('الرئيسية', style: AppStyles.textStyle20),
          elevation: 0,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text(
                  'مرحبا بك في الصفحة الرئيسية',
                  style: AppStyles.textStyle16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
