import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Profile'), backgroundColor: const Color(0xFF1E3A8A), foregroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(radius: 50, backgroundColor: Color(0xFF1E3A8A), child: Icon(Icons.person, size: 60, color: Colors.white)),
            ),
            const SizedBox(height: 16),
            const Text('Amta Hafeez', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text('Software Engineering Student', style: TextStyle(color: Colors.grey)),
            const Divider(height: 32),
            _buildProfileRow(Icons.badge, 'Registration ID', 'CIIT/FA24-BSE-079'),
            _buildProfileRow(Icons.school, 'Current Semester', '5th Semester'),
            _buildProfileRow(Icons.apartment, 'Department', 'Computer Science'),
            _buildProfileRow(Icons.email, 'Email', 'amta.solace10@gmail.com'),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF1E3A8A)),
          const SizedBox(width: 16),
          Text('$label: ', style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value, textAlign: TextAlign.right)),
        ],
      ),
    );
  }
}