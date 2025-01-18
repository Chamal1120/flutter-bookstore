import 'package:flutter/material.dart';

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
