import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center( // Center the content
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Black Container instead of colorful gradient
            Container(
              width: 300,
              height: 300,
              color: Colors.black, // Set the color to black
              alignment: Alignment.center, // Center the text within the container
              child: Text(
                'Product Image', // Placeholder text for the product
                style: TextStyle(color: Colors.white), // White text for visibility
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Product Name: Hatoig R234',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Price: \$26.35', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
