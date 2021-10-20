import 'package:exercise_3/main.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Discovery",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Center(child: challenging()));
  }
}

class challenging extends StatelessWidget {
  const challenging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSize = 70;
    return Column(
        // mainAxisAlignment: MainAxisAlignment,
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.network(
                        "https://lh3.googleusercontent.com/proxy/GqHTmmXbnPBFCQRc-kXOwBnsedcfTYyqIOryUmN605CE3Td4OA6TXor7HqgtgcXqh-TOHDip6ntqH2w0hSUszMhoX84NrxE",
                        height: imageSize,
                      ),
                      Text("Home"),
                    ],
                  ),
                  decoration: dec()),
              SizedBox(width: 30),
              Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.network(
                        "https://lh3.googleusercontent.com/proxy/GqHTmmXbnPBFCQRc-kXOwBnsedcfTYyqIOryUmN605CE3Td4OA6TXor7HqgtgcXqh-TOHDip6ntqH2w0hSUszMhoX84NrxE",
                        height: imageSize,
                      ),
                      Text("Home"),
                    ],
                  ),
                  decoration: dec()),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.network(
                        "https://lh3.googleusercontent.com/proxy/GqHTmmXbnPBFCQRc-kXOwBnsedcfTYyqIOryUmN605CE3Td4OA6TXor7HqgtgcXqh-TOHDip6ntqH2w0hSUszMhoX84NrxE",
                        height: imageSize,
                      ),
                      Text("Home"),
                    ],
                  ),
                  decoration: dec()),
              SizedBox(width: 30,),
              Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.network(
                        "https://lh3.googleusercontent.com/proxy/GqHTmmXbnPBFCQRc-kXOwBnsedcfTYyqIOryUmN605CE3Td4OA6TXor7HqgtgcXqh-TOHDip6ntqH2w0hSUszMhoX84NrxE",
                        height: imageSize,
                      ),
                      Text("Home"),
                    ],
                  ),
                  decoration: dec()),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.network("https://lh3.googleusercontent.com/proxy/GqHTmmXbnPBFCQRc-kXOwBnsedcfTYyqIOryUmN605CE3Td4OA6TXor7HqgtgcXqh-TOHDip6ntqH2w0hSUszMhoX84NrxE",height:imageSize,),
                      Text("Home"),
                    ],
                  ),
                  decoration: dec()),
                  SizedBox(width:30,),
                  Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.network("https://lh3.googleusercontent.com/proxy/GqHTmmXbnPBFCQRc-kXOwBnsedcfTYyqIOryUmN605CE3Td4OA6TXor7HqgtgcXqh-TOHDip6ntqH2w0hSUszMhoX84NrxE",height:imageSize,),
                      Text("Home"),
                    ],
                  ),
                  decoration: dec()),
            ],
          ),
        ]);
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
