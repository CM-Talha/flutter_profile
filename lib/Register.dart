import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _email;
  String _password;
  Future<void> validateAndSubmit(String email, String pass) async {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      try {
        AuthResult result = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: pass);
        FirebaseUser user = result.user;
        print('$user.uid');
      } catch (e) {
        print(e.message);
      }
    }
  }

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Login()));
            },
            child: Text(
              'Log In',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
      body: Form(
        key: formkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: TextEditingController(),
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  maxLength: 50,
                  onChanged: (value) => _email = value,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  maxLines: 1,
                  maxLength: 50,
                  onChanged: (value) => _password = value,
                ),
                RaisedButton(
                  child: Text('Register'),
                  onPressed: () {
                    validateAndSubmit(_email, _password);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
