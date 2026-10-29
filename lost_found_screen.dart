import 'package:flutter/material.dart';

class LostFoundScreen extends StatelessWidget {
  const LostFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lost & Found'), backgroundColor: const Color(0xFF1E3A8A), foregroundColor: Colors.white),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.headphones, color: Colors.red),
              title: Text('Lost: Black Wireless Earbuds'),
              subtitle: Text('Last seen near Computer Lab 3.\nContact: Ali (BCS-042)'),
              isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.book, color: Colors.green),
              title: Text('Found: Data Structures Textbook'),
              subtitle: Text('Found in Cafeteria table 4.\nContact Admin Office.'),
              isThreeLine: true,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF1E3A8A),
        foregroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}