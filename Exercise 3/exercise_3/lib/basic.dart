import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
   const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("iOS vs Andriod"),
      ),
      body: Center(
          child: Column(
        children:  [
          SizedBox(height: 20),
          Text("Which is your prefered smart phone"),
          SizedBox(height: 20),
          Image.network("https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-purple-select-2021?wid=470&hei=556&fmt=png-alpha&.v=1617130317000",height: 250,),
          SizedBox(height: 20),
          Image.network("https://m.media-amazon.com/images/I/61KvXevceyL._AC_SL1054_.jpg", height: 250,)


        ],
      )),
    );
  }
}
