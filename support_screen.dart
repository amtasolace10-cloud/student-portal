import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help & Support'), backgroundColor: const Color(0xFF1E3A8A), foregroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Frequently Asked Questions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            ExpansionTile(
              title: Text('How do I reset my portal password?'),
              children: [Padding(padding: EdgeInsets.all(8.0), child: Text('Contact the IT Helpdesk at room 204 with your Student ID card.'))],
            ),
            ExpansionTile(
              title: Text('How to download study materials?'),
              children: [Padding(padding: EdgeInsets.all(8.0), child: Text('Go to Study Resources and tap the download icon next to any PDF.'))],
            ),
          ],
        ),
      ),
    );
  }
}