import 'package:flutter/material.dart';
import 'package:projectfinal/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products();

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/reddress.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Mobiles",
      "picture": "images/products/phones.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Saree",
      "picture": "images/products/saree.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Headphones",
      "picture": "images/products/headphones.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name":"Accessories",
      "picture": "images/products/makeup.jpeg",
      "old_price": 120,
      "price": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_pictures: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pictures;
  final prod_old_price;
  final prod_price;

  const Single_prod({
    this.prod_name,
    this.prod_pictures,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(
                new MaterialPageRoute(builder: (context)=>new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_pictures: prod_pictures,
                ))),

            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row( children: [
                  Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 46.0),),),
                  new Text("\$${prod_price }",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                ],
                )
              ),
              child: Image.asset(
                prod_pictures,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
