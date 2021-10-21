import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          flexibleSpace: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2,
                      ),
                      Text("Name"),
                    ],
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 2,
                      ),
                      Text("150 pts"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              SizedBox(height: 10),
              rowW(1, Colors.blue, "Steve Bobs", 150),
              rowW(2, Colors.green, "Steve Bobs", 150),
              rowW(3, Colors.red, "Steve Bobs", 150),
              rowW(4, Colors.yellow, "Steve Bobs", 150),
            ],
          ),
        ),
        bottomNavigationBar: bottomNav(),
      
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

class bottomNav extends StatefulWidget {
  const bottomNav({Key? key}) : super(key: key);

  @override
  _bottomNavState createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.orange,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "My Dream",
        backgroundColor: Colors.orange),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "",
          backgroundColor: Colors.orange
        
        ),
        BottomNavigationBarItem(icon: Icon(Icons.share), label: "",
        backgroundColor: Colors.orange),
        BottomNavigationBarItem(icon: Icon(Icons.menu,),label: "",
        backgroundColor: Colors.orange,)
      ],
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          
          
        });
      },
    );
  }
}


