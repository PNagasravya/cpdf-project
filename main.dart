import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'components/horizontal_view.dart';
import 'components/products.dart';
import 'package:projectfinal/pages/cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      items: [
        'images/products/pro1.jpeg',
        'images/products/pro2.jpeg',
        'images/products/pro3.jpeg',
        'images/products/pro4.jpeg',
        'images/products/pro5.jpeg',
      ].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Image.asset(item, fit: BoxFit.cover),
            );
          },
        );
      }).toList(),
    );

    Widget radioButtons = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentIndex == index ? Colors.blue : Colors.grey,
            ),

          ),
        );
      }),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('SparkleShop'),
        actions: [
          new IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          new IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
            },
            icon: Icon(Icons.shopping_cart, color: Colors.white),
          ),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Nagasravya'),
              accountEmail: Text('nagasravya@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightGreenAccent,
                child: Icon(Icons.person, color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.indigo),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.indigo),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.check, color: Colors.indigo),
              ),
            ),
            InkWell(
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));},
              child: ListTile(
                title: Text('My cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.indigo),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.indigo),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.grey),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          // Assuming imageCarousel is a built widget
          imageCarousel,

          // Assuming radioButtons is another widget
          radioButtons,

          // Add padding if needed (adjust EdgeInsets values)
          Padding(
            padding: const EdgeInsets.all(8.0), // Adjust padding as needed
            child: Text('Categories'),
          ),
          HorizontalList(),
          Padding(padding: const EdgeInsets.all(20.0),
          child: Text('Recent Intems'),),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),

    );
  }
}
