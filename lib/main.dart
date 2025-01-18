import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceylon BookStore',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: BookView(),
    );
  }
}

// BookView class
class BookView extends StatelessWidget {
  final List<Map<String, dynamic>> books = [
    // Using openlibray api to get the cover images
    {
      'title': 'Harry Potter and the Philosopher\'s Stone',
      'author': 'J K Rowling',
      'price': 2500,
      'image': 'https://covers.openlibrary.org/b/isbn/9780545790352-L.jpg',
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
            padding: const EdgeInsets.all(30.0),
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

class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final num price;
  final String image;

  const BookCard({
    super.key,
    required this.title,
    required this.author,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Text(
            'By: $author',
            style: TextStyle(
              fontSize: 14.0,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 5.0,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                image,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'Price: ${price}LKR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                CustomTextButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          backgroundColor: Colors.grey[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add to Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.grey[700],
                size: 20.0,
              ),
            ),
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
