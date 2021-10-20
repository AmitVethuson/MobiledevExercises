import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Leaderboard",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          bottom: PreferredSize(
            child: Column(children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "First",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                  ),
                  Text(
                    "150pt",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              )
            ]),
            preferredSize: Size.fromHeight(50),
          ),
        ),
        body: ListView(
         
          children: [
            SizedBox(height: 10),
            rowW(1, Colors.blue, "Steve Bobs", 150),
            rowW(2, Colors.green, "Steve Bobs", 150),
            rowW(3, Colors.red, "Steve Bobs", 150),
            rowW(4, Colors.yellow, "Steve Bobs", 150),
          ],
        ),
      ),
    );
  }

  rowW(int place, Color color, String name, int points) {
    return Column(children: [

      Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("$place"),
          CircleAvatar(
            backgroundColor: color,
            radius: 25,
          ),
          Text("$name"),
          Text("$points")
        ],
      ),
      SizedBox(height: 10),
    ]);
  }
}
