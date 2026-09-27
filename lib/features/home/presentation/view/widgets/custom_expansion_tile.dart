import 'package:durosy/features/videos/presentation/view/videos_view.dart';
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatelessWidget {
  final Text title;

  const CustomExpansionTile({super.key, required this.title});

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
        title: title,

        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      (VideosView(lessonTitle: 'الدرس الأول')),
                ),
              );
            },

            child: ListTile(
              iconColor: Colors.red.shade400,
              leading: Icon(Icons.video_library),
              title: Text('الدرس الأول'),
            ),
          ),
          ListTile(
            iconColor: Colors.blue.shade400,
            leading: Icon(Icons.assignment),
            title: Text('الامتحان الأول'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      (VideosView(lessonTitle: 'الدرس الثاني')),
                ),
              );
            },
            child: ListTile(
              iconColor: Colors.red.shade400,
              leading: Icon(Icons.video_library),
              title: Text('الدرس الثاني'),
            ),
          ),
          ListTile(
            iconColor: Colors.blue.shade400,
            leading: Icon(Icons.assignment),
            title: Text('الامتحان الثاني'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      (VideosView(lessonTitle: 'الدرس الثالث')),
                ),
              );
            },
            child: ListTile(
              iconColor: Colors.red.shade400,
              leading: Icon(Icons.video_library),
              title: Text('الدرس الثالث'),
            ),
          ),
          ListTile(
            iconColor: Colors.blue.shade400,
            leading: Icon(Icons.assignment),
            title: Text('الامتحان الثالث'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      (VideosView(lessonTitle: 'الدرس الرابع')),
                ),
              );
            },
            child: ListTile(
              leading: Icon(Icons.video_library),
              iconColor: Colors.red.shade400,
              title: Text('الدرس الرابع'),
            ),
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
