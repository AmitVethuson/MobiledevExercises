import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: formwidget(),
      ),
    );
  }
}

class formwidget extends StatefulWidget {
  const formwidget({Key? key}) : super(key: key);

  @override
  _formwidgetState createState() => _formwidgetState();
}

class _formwidgetState extends State<formwidget> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? _email = "";
  String? _password = "";
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
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
                      null;
                    }
                  },
                  onSaved: (value) {
                    _password = value;
                  },
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>secondScreen(name: _email))
                           );
                          
                          
                        }
                      });
                    },
                    icon: Icon(Icons.login),
                    label: Text("Login"))
              ],
            )));
  }
}

class secondScreen extends StatefulWidget {
  final String? name;
  const secondScreen({Key? key, this.name}) : super(key: key);

  @override
  _secondScreenState createState() => _secondScreenState();
}

class _secondScreenState extends State<secondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("Login"
      
        ),),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Text("Hello ${widget.name} ",style: TextStyle(fontSize: 30),),
              Icon(Icons.verified,size: 100,),
              SizedBox(height: 10,),
              Text("You have been Logged in"),

            ],
          ),
        ),
      ),
    );
  }
}
