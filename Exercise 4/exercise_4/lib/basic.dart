import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Tab View Controller"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "List View",
                  ),
                  Tab(
                    text: "Grid View",
                  )
                ],
              )),
          body: TabBarView(
            children: [ListViewss(), gridviewss()],
          ),
        ));
  }
}

class gridviewss extends StatelessWidget {
  const gridviewss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        createContainer(Colors.blue),
        createContainer(Colors.red),
        createContainer(Colors.green),
        createContainer(Colors.yellow),
        createContainer(Colors.blue),
        createContainer(Colors.pink),
        createContainer(Colors.red),
        createContainer(Colors.purple),
        createContainer(Colors.red),
        createContainer(Colors.teal),
        createContainer(Colors.yellow),
        createContainer(Colors.white),
        createContainer(Colors.orange),
        createContainer(Colors.blue),
        createContainer(Colors.black)
      ],
    );
  }

  Widget createContainer(Color color) {
    return Container(
      height: 100,
      color: color,
      alignment: Alignment.center,
    );
  }
}

class ListViewss extends StatelessWidget {
  const ListViewss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        createContainer(Colors.blue),
        createContainer(Colors.red),
        createContainer(Colors.green),
        createContainer(Colors.yellow),
        createContainer(Colors.blue),
        createContainer(Colors.red),
        createContainer(Colors.green),
        createContainer(Colors.yellow),
        createContainer(Colors.red),
        createContainer(Colors.green),
        createContainer(Colors.yellow),
        createContainer(Colors.red),
        createContainer(Colors.green),
        createContainer(Colors.yellow),
      ],
    );
  }

  Widget createContainer(Color color) {
    return Container(
      child: Text("Word"),
      height: 100,
      color: color,
      alignment: Alignment.center,
    );
  }
}
