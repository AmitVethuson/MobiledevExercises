import 'package:exercise_3/main.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Text(
              "Please follow the links below to contact us...",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(height: 20),
            iconRow(),
            SizedBox(
              height: 20,
            ),
            textRow()
          ],
        ),
      ),
    );
  }

  iconRow() {
    double spacing = 70;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Icon(
          Icons.phone,
          color: Colors.blue,
         size: 40, 
        ),
        SizedBox(
          width: spacing,
        ),
        Icon(
          Icons.email,
          color: Colors.blue,
          size: 40, 
        ),
        SizedBox(
          width: spacing,
        ),
        Icon(
          Icons.share,
          color: Colors.blue,
          size: 40, 
        )
      ],
    );
  }

  textRow() {
    double spacing = 90;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,

      children: [
        SizedBox(
          width: spacing,
        ),
        Text("Call",style: TextStyle(color: Colors.blue),),
        SizedBox(
          width: spacing-25,
        ),
        Text("Email",style: TextStyle(color: Colors.blue)),
        SizedBox(
          width: spacing-30,
        ),
        Text("Share",style: TextStyle(color: Colors.blue))
      ],
    );
  }
}
