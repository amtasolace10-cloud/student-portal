import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notices = [
      {'title': 'Mid-Term Exam Schedule Announced', 'date': 'Oct 28, 2026', 'desc': 'Check your portal for room allocations.'},
      {'title': 'Library Timings Extended', 'date': 'Oct 25, 2026', 'desc': 'Library will remain open until 10:00 PM during exam weeks.'},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Announcements'), backgroundColor: const Color(0xFF1E3A8A), foregroundColor: Colors.white),
      body: ListView.builder(
        itemCount: notices.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.announcement, color: Colors.orange),
              title: Text(notices[index]['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${notices[index]['desc']}\n\nDate: ${notices[index]['date']}'),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}