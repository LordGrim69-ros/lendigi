import 'package:Backend/service/auth.dart';
import 'package:flutter/material.dart';

class SignIN extends StatefulWidget {
  @override
  _SignINState createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('Sign In'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
            child: Text('Sign In Anonymous'),
            onPressed: () async {
              dynamic result = _auth.signInAnon();
              if (result == null) {
                print('error sign in');
              } else {
                print('signed in');
                print(result.uid);
              }
              Text(result.uid);
            }),
      ),
    );
  }
}
