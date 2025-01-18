import 'package:flutter/material.dart';
import 'package:book_list_view/widgets/custom_button.dart';

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
