import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  String _email;
  String _password;

  Future<void> validateAndSubmit() async {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      try {
        AuthResult result = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        FirebaseUser user = result.user;
        print('$user.uid');
       if(user!=null){
          Navigator.pushNamed(context, 'Profile');
       }
      } catch (e) {
        print(e.message);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.popAndPushNamed(context,'Register');
            },
            child: Text(
              'Register',
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
                  child: Text('Login'),
                  onPressed: () {
                    validateAndSubmit();
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
