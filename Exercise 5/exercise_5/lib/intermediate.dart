import 'package:flutter/material.dart';

int iteration = 0;

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Image.network(
            "https://cdn.mos.cms.futurecdn.net/ntFmJUZ8tw3ULD3tkBaAtf.jpg",
            width: 400,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Mount World",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(width:200),
                    // Icon(Icons.star)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Canada Testing Ground",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(width: 100),
                    iconStar(),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class iconStar extends StatefulWidget {
  const iconStar({Key? key}) : super(key: key);

  @override
  _iconStarState createState() => _iconStarState();
}

class _iconStarState extends State<iconStar> {
  @override
  Widget build(BuildContext context) {
    Color _color = Colors.red;
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      iteration += 1;
                      _color = Colors.red;
                      
                    });
                  },
                  icon: Icon(Icons.star),color: _color,),
                  Text("$iteration")
            ],
          )
        ],
      ),
    );
  }
}
