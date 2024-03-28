import 'package:flutter/material.dart';
import 'package:projectfinal/components/products.dart';

class Cart_Products extends StatefulWidget {
  const Cart_Products();

  @override
  State<Cart_Products> createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart=[
    {
    "name":"Blazer",
    "picture":"images/products/blazer.jpeg",
  "price":85,
  "size":"M",
      "color":"Red",
      "quantity":1,
    },
    {
      "name":"RedDress",
      "picture":"images/products/reddress.jpeg",
      "price":50,
      "size":"M",
      "color":"Red",
      "quantity":1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder:(context,index){
          return Single_cart_products(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_pictures: Products_on_the_cart[index]["picture"],
          );
          new Text("aa");
        });

  }
}

class Single_cart_products extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pictures;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  final cart_prod_price;



  const Single_cart_products({
    this.cart_prod_name,
    this.cart_prod_pictures,
    this.cart_prod_qty,
    this.cart_prod_price,
    this.cart_prod_color,
    this.cart_prod_size,

  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_pictures,width: 80.0,height: 80.0,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: [
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(0.0),
                child: new Text("Size:"),
                ),
                Padding(padding: const EdgeInsets.all(4.0),
                child: new Text(cart_prod_size,style: TextStyle(color: Colors.red)),),
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: new Text("Color:"),
                 
                ),
                Padding(padding: const EdgeInsets.all(4.0),
                child: new Text(cart_prod_color,style: TextStyle(color: Colors.red)),
                )
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",style: TextStyle(fontSize: 17.0,
              fontWeight: FontWeight.bold,color: Colors.red
              ),),
            )
          ],
        ),

      ),
    );
  }
}


