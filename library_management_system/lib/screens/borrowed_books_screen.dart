import 'package:flutter/material.dart';

class BorrowedBooksScreen extends StatelessWidget {
  final List<Map<String, String>> borrowedBooks = [
    {'title': 'The Alchemist', 'due': '2025-12-25'},
    {'title': 'Harry Potter', 'due': '2025-12-28'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: Text('Borrowed Books'),
        backgroundColor: Colors.purple[700],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: borrowedBooks.length,
          itemBuilder: (context, index) {
            final book = borrowedBooks[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple[700],
                  child: Icon(Icons.library_books, color: Colors.white),
                ),
                title: Text(
                  book['title']!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Due: ${book['due']}'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  // Borrowed book details logic
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
