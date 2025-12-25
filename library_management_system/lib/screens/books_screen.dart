import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  final List<String> books = [
    'The Alchemist',
    'Harry Potter',
    'Flutter for Beginners',
    'Clean Code',
    'Design Patterns',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Books'),
        backgroundColor: Colors.blue[700],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue[700],
                  child: Icon(Icons.book, color: Colors.white),
                ),
                title: Text(
                  books[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  // Book detail open karne ka logic
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
