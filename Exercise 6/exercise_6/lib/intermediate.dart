import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Spiderman Club"),
          centerTitle: true,
        ),
        body: Center(
          child: formpage(),
        ),
      ),
    );
  }
}

class formpage extends StatefulWidget {
  const formpage({Key? key}) : super(key: key);

  @override
  _formpageState createState() => _formpageState();
}

class _formpageState extends State<formpage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? _email = "";
  String? _password = "";
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(40),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "No";
                  } else {
                    _email = value;
                    null;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "No";
                  } else {
                    _password = value;
                    null;
                  }
                },
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      if (_formkey.currentState!.validate()) {
                        print("$_password");
                        _showAlertDialog(context, _password);
                      }
                    });
                  },
                  icon: Icon(Icons.login),
                  label: Text("Login"))
            ],
          ),
        ));
  }

  _showAlertDialog(BuildContext context, String? pass) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              scrollable: true,
              contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              title: Text("Secret Question"),
              content: Container(
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: "Who is your fav hero"),
                    ),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
              fixedSize: const Size(240, 20)),
                        onPressed: () {},
                        icon: Icon(Icons.login),
                        label: Text("Submit"),),
                    Text("Your password: $pass")
                  ],
                )),
              ));
        }).then((value) {
      setState(() {});
    });
  }
}
