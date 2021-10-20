import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSize = 70;
    return Center(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Discovery",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        
        child: GridView.count(
          padding: EdgeInsets.all(50),
          mainAxisSpacing: 40,
          crossAxisSpacing: 40,
          crossAxisCount: 2,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.network(
                    "https://images.vexels.com/media/users/3/136203/isolated/preview/c40fc7e71e6332611bc3cb464468c6fd-hotel-building-cartoon.png",
                    height: imageSize,
                  ),
                  Text("Home"),
                ],
              ),
              decoration: dec(),
            ),
            Container(
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.network(
                    "https://images.vexels.com/media/users/3/136203/isolated/preview/c40fc7e71e6332611bc3cb464468c6fd-hotel-building-cartoon.png",
                    height: imageSize,
                  ),
                  Text("Home"),
                ],
              ),
              decoration: dec(),
            ),
            Container(
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.network(
                    "https://images.vexels.com/media/users/3/136203/isolated/preview/c40fc7e71e6332611bc3cb464468c6fd-hotel-building-cartoon.png",
                    height: imageSize,
                  ),
                  Text("Home"),
                ],
              ),
              decoration: dec(),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.network(
                    "https://images.vexels.com/media/users/3/136203/isolated/preview/c40fc7e71e6332611bc3cb464468c6fd-hotel-building-cartoon.png",
                    height: imageSize,
                  ),
                  Text("Home"),
                ],
              ),
              decoration: dec(),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.network(
                    "https://images.vexels.com/media/users/3/136203/isolated/preview/c40fc7e71e6332611bc3cb464468c6fd-hotel-building-cartoon.png",
                    height: imageSize,
                  ),
                  Text("Home"),
                ],
              ),
              decoration: dec(),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.network(
                    "https://images.vexels.com/media/users/3/136203/isolated/preview/c40fc7e71e6332611bc3cb464468c6fd-hotel-building-cartoon.png",
                    height: imageSize,
                  ),
                  Text("Home"),
                ],
              ),
              decoration: dec(),
            ),
          ],
        ),
      ),
    ));
  }

  dec() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    );
  }
}
