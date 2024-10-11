import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'notification_page.dart';
import 'product_page.dart';
import 'wishlist_page.dart';
import 'search_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Home'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.blue[200], // Replacing image with color
          ),
          GestureDetector(
            onTap: () {
              // Navigate to SearchPage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search Vape'),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to ProductPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductPage()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('All Vape'),
                      Container(
                        width: 100,
                        height: 50,
                        color: Colors.red[200], // Replacing image with color
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Liquid'),
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.green[200], // Replacing image with color
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Accecoris'),
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.yellow[200], // Replacing image with color
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Atomize'),
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.yellow[200], // Replacing image with color
                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to ProductPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductPage()),
                    );
                  },
                  child: Container(
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.purple[200], // Replacing image with color
                        ),
                        Text('Hatoig R234'),
                        Text('\$26.35'),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.orange[200], // Replacing image with color
                      ),
                      Text('TRML T200'),
                      Text('\$29.34'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to HomePage (currently does nothing)
                  },
                  child: Icon(Icons.home),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to CartPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );
                  },
                  child: Icon(Icons.shopping_cart),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to WishlistPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WishlistPage()),
                    );
                  },
                  child: Icon(Icons.favorite),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to NotificationPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotificationPage()),
                    );
                  },
                  child: Icon(Icons.notifications),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
