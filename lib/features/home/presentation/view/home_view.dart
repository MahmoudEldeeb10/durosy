import 'package:durosy/core/constants/styles.dart';
import 'package:durosy/features/home/presentation/view/widgets/custom_expansion_tile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo1.png'),
        title: Text('مرحبا محمود', style: AppStyles.textStyle20),
        elevation: 0,
      ),
      body: ListView(
        children: [
          CustomExpansionTile(
            title: const Text('الوحدة الأولى', style: AppStyles.textStyle20),
          ),
          CustomExpansionTile(
            title: const Text('الوحدة الثانية', style: AppStyles.textStyle20),
          ),
          CustomExpansionTile(
            title: const Text('الوحدة الثالثة', style: AppStyles.textStyle20),
          ),
          CustomExpansionTile(
            title: const Text('الوحدة الرابعة', style: AppStyles.textStyle20),
          ),
          CustomExpansionTile(
            title: const Text('الوحدة الخامسة', style: AppStyles.textStyle20),
          ),
          CustomExpansionTile(
            title: const Text('الوحدة السادسة', style: AppStyles.textStyle20),
          ),
          CustomExpansionTile(
            title: const Text('الوحدة السابعة', style: AppStyles.textStyle20),
          ),
        ],
      ),
    );
  }
}
