import 'package:book_list_view/widgets/book_card.dart';
import 'package:flutter/material.dart';

// BookView class
class BookView extends StatelessWidget {
  final List<Map<String, dynamic>> books = [
    // Using openlibray api to get the cover images
    {
      'title': 'Harry Potter and the Philosopher\'s Stone',
      'author': 'J K Rowling',
      'price': 2500,
      'image': 'https://covers.openlibrary.org/b/isbn/9781408855652-L.jpg',
    },
    {
      'title': 'Paper Towns',
      'author': 'John Green',
      'price': 2000,
      'image': 'https://covers.openlibrary.org/b/isbn/9780142414934-L.jpg',
    },
    {
      'title': 'If I stay',
      'author': 'Gayle Forman',
      'price': 1800,
      'image': 'https://covers.openlibrary.org/b/isbn/9780142415436-L.jpg',
    },
  ];
  BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ceylon BookStore',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Padding(
            padding: const EdgeInsets.all(40.0),
            child: BookCard(
                title: book['title']!,
                author: book['author']!,
                price: book['price']!,
                image: book['image']!),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[800],
          indent: 40.0,
          endIndent: 40.0,
        ),
      ),
    );
  }
}
