import 'package:example/db.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('User Profile'),
         actions: [
           InkWell(
             onTap: (){
               Database().signOut();
               Navigator.popUntil(context, ModalRoute.withName('Login'));
             },
             child: Text('SignOut'),
           ),
         ],
       ),
       body: SingleChildScrollView(
         child:Center(
           child: Column(
             children: [
               CircleAvatar(
                 backgroundImage: AssetImage(''),
                 radius: 60,
               ),
               SizedBox(height: 10,),
               Text('Full Name'),
               SizedBox(height: 10,),
               Text('Introduction'),
               SizedBox(height:10),
               RaisedButton(
                 child:Text('Edit Profile'),
                 onPressed:(){

               }),
             ],
           ),
         )
       ),
    );
  }
}