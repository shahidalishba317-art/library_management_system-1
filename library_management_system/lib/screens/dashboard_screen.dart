import 'package:flutter/material.dart';
import 'profile_screen.dart'; // ✅ add this
import 'settings_screen.dart';
import 'books_screen.dart';
import 'borrowed_books_screen.dart';
import 'add_book_screen.dart';
import 'statistics_screen.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cards = [
    {
      'title': 'Books',
      'icon': Icons.book,
      'colors': [Colors.blue[700]!, Colors.blue[500]!],
      'screen': BooksScreen(),
    },
    {
      'title': 'Borrowed',
      'icon': Icons.library_books,
      'colors': [Colors.purple[700]!, Colors.purple[500]!],
      'screen': BorrowedBooksScreen(),
    },
    {
      'title': 'Add Book',
      'icon': Icons.add_box,
      'colors': [Colors.orange[700]!, Colors.orange[500]!],
      'screen': AddBookScreen(),
    },
    {
      'title': 'Profile',
      'icon': Icons.person,
      'colors': [Colors.teal[700]!, Colors.teal[500]!],
      'screen': ProfileScreen(), // ✅ updated
    },
    {
      'title': 'Settings',
      'icon': Icons.settings,
      'colors': [Colors.red[700]!, Colors.red[500]!],
      'screen': SettingsScreen(),
    },
    {
      'title': 'Statistics',
      'icon': Icons.bar_chart,
      'colors': [Colors.green[700]!, Colors.green[500]!],
      'screen': StatisticsScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue[800]!, Colors.blue[600]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dashboard',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(Icons.settings, color: Colors.blue[800]),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SettingsScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: cards.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final card = cards[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => card['screen']),
                );
              },
              borderRadius: BorderRadius.circular(25),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: card['colors'],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: card['colors'][1].withOpacity(0.5),
                      blurRadius: 12,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.2),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Icon(card['icon'], size: 40, color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    Text(
                      card['title'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
