import 'package:flutter/material.dart';
import 'package:UpsideBudget/services/auth.dart';
import 'package:UpsideBudget/shared/constants.dart';
import 'package:UpsideBudget/screens/authenticate/register_test.dart';
import 'package:UpsideBudget/screens/FrontendDevScreens/UI/CustomInputField.dart';

class loginScreen extends StatelessWidget {

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       color: Color(0xff2F3E46),
       child: Center(
         child: Container(
           height: 300,
           width: 400,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               CustomInputField(
                 Icon(Icons.mail, color: Colors.white), 'Email', false),
               CustomInputField(
                 Icon(Icons.lock, color: Colors.white), 'Password', true),
               Container(
                 height: 50,
                 width: 150,
               child: RaisedButton(
                  onPressed:() {},
                  color: Color(0xff1a936f),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),

                 child: Text('Sign In', style: TextStyle( fontSize: 18, color: Color(0xff2F3E46)),), // Text
               ),
               ),
               Text('Dont have an account?',
                   style: TextStyle(
                     color: Color(0xffa5a5a5))
                   ),
               GestureDetector(
                 onTap: () {
                   throw UnimplementedError;
                 },
                   child: Text('Create An Account', style: TextStyle( color: Color(0xff1a936f))
               ),
               ),

       ],
                 ),

               ),

                 ),
               ),
           );
  }
}



