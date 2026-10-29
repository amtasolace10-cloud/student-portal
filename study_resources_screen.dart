import 'package:flutter/material.dart';

class StudyResourcesScreen extends StatelessWidget {
  const StudyResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final resources = ['Mobile App Development - Lecture Notes PDF', 'Software Architecture - Design Patterns', 'Computer Networks - Lab Manual'];
    return Scaffold(
      appBar: AppBar(title: const Text('Study Resources'), backgroundColor: const Color(0xFF1E3A8A), foregroundColor: Colors.white),
      body: ListView.builder(
        itemCount: resources.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.picture_as_pdf, color: Colors.red),
              title: Text(resources[index]),
              subtitle: const Text('PDF • 2.4 MB'),
              trailing: IconButton(
                icon: const Icon(Icons.download),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Downloading resource...')));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}