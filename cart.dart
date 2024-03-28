import 'package:flutter/material.dart';
import 'package:projectfinal/components/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart();

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Removed unnecessary "new"
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Cart'),
        actions: [
          IconButton( // Removed unnecessary "new"
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),

      body: new Cart_Products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("\$230"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {}, // Empty function for now
                child: Text("Check out", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
