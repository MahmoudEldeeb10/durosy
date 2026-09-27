import 'package:durosy/core/constants/styles.dart';
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
          CustomExpansionTile(),
          CustomExpansionTile(),
          CustomExpansionTile(),
          CustomExpansionTile(),
          CustomExpansionTile(),
          CustomExpansionTile(),
          CustomExpansionTile(),
        ],
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ExpansionTile(
        // backgroundColor: Colors.blue.shade50,
        title: const Text(
          'الوحدة الأولى',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        children: [
          ListTile(
            iconColor: Colors.red.shade400,
            leading: Icon(Icons.video_library),
            title: Text('الدرس الأول'),
          ),
          ListTile(
            iconColor: Colors.blue.shade400,
            leading: Icon(Icons.assignment),
            title: Text('الامتحان الأول'),
          ),
          ListTile(
            iconColor: Colors.red.shade400,
            leading: Icon(Icons.video_library),
            title: Text('الدرس الثاني'),
          ),
          ListTile(
            iconColor: Colors.blue.shade400,
            leading: Icon(Icons.assignment),
            title: Text('الامتحان الثاني'),
          ),
          ListTile(
            iconColor: Colors.red.shade400,
            leading: Icon(Icons.video_library),
            title: Text('الدرس الثالث'),
          ),
          ListTile(
            iconColor: Colors.blue.shade400,
            leading: Icon(Icons.assignment),
            title: Text('الامتحان الثالث'),
          ),
          ListTile(
            leading: Icon(Icons.video_library),
            iconColor: Colors.red.shade400,
            title: Text('الدرس الرابع'),
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            iconColor: Colors.blue.shade400,
            title: Text('الامتحان الرابع'),
          ),
        ],
      ),
    );
  }
}
