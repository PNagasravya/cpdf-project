import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(imageLocation: 'images/cats/tshirt.jpeg', imageCaption: 'T-Shirts'),
          Category(imageLocation: 'images/cats/shirts.jpeg', imageCaption: 'Shirts'),
          Category(imageLocation: 'images/cats/kurta.jpeg', imageCaption: 'Kurta'),
          Category(imageLocation: 'images/cats/kurti.jpeg', imageCaption: 'Kurtis'),
          Category(imageLocation: 'images/cats/frock.jpeg', imageCaption: 'Frocks'),
          Category(imageLocation: 'images/cats/shoes.jpeg', imageCaption: 'WomenSandals'),
          Category(imageLocation: 'images/cats/formals.jpeg', imageCaption: 'MenFormals'),
          Category(imageLocation: 'images/cats/jeans.jpeg', imageCaption: 'Jeans'),
          Category(imageLocation: 'images/cats/accessories.jpeg', imageCaption: 'Accessories'),
          // Add more Category widgets here if needed
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({Key? key, required this.imageLocation, required this.imageCaption}) : super(key: key);

  final String imageLocation;
  final String imageCaption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: () {
          // Handle category tap
        },
        child: Container(
          width: 100.0,
          child: Column(
            children: [
              Image.asset(
                imageLocation,
                width: 100.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
              Text(imageCaption),
            ],
          ),
        ),
      ),
    );
  }
}
