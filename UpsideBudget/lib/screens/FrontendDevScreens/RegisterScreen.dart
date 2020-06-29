import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:UpsideBudget/screens/FrontendDevScreens/UI/CustomInputField.dart';
import 'package:flutter/src/widgets/container.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff2F3E46),
        child: Center(
          child: Container( 
            width: 400,
            height: 650,
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.person,color: Colors.white,size: 100),
                CustomInputField(
                  Icon(Icons.mail,color: Colors.white),'Email',false),
                CustomInputField(
                  Icon(Icons.person,color: Colors.white),'Username',false),
                CustomInputField(
                  Icon(Icons.lock,color: Colors.white),'Password',true),
                CustomInputField(
                  Icon(Icons.check,color: Colors.white),'Confirm Password',true),
                Container(
                  width: 150,
                  height: 50,
                  child: RaisedButton(
                    onPressed: (){},color: Color(0xff1A936F),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text('Sign Up', style: TextStyle(fontSize: 18,color: Color(0xff2F3E46))),
                  ),
                ),
                Text('Already have an account?', style: TextStyle(color: Color(0xffA5A5A5))),
                GestureDetector(
                  onTap: () {
                    throw UnimplementedError;
                  },
                  child: Text('Login', style: TextStyle(color: Color(0xff1A936F)))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}