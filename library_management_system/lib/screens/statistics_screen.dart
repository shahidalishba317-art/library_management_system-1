import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> stats = [
    {'title': 'Total Books', 'value': 120, 'icon': Icons.book},
    {'title': 'Borrowed Books', 'value': 30, 'icon': Icons.library_books},
    {'title': 'Available Books', 'value': 90, 'icon': Icons.check_circle},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('Statistics'),
        backgroundColor: Colors.green[700],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: stats.map((stat) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green[700],
                  child: Icon(stat['icon'], color: Colors.white),
                ),
                title: Text(
                  stat['title'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  stat['value'].toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
