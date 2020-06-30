import 'package:UpsideBudget/screens/authenticate/register_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:UpsideBudget/screens/FrontendDevScreens/UI/CustomInputField.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:UpsideBudget/screens/FrontendDevScreens/loginScreen.dart';
import 'package:UpsideBudget/services/auth.dart';





class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String username = '';
  String password = '';
  String confirmPassword = '';
  String error = '';

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
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.person,color: Colors.white,size: 100),



                Container(
                  width: 250,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xff1A936F),

                    child: Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC4C4C4),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                            ),
                            width: 200,
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                                obscureText: false,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                    fillColor: Color(0xffC4C4C4),
                                    filled: true),
                                style: TextStyle(

                                  fontSize: 18.0,
                                  color: Color(0xff2F3E46),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 250,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xff1A936F),

                    child: Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC4C4C4),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                            ),
                            width: 200,
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (val) => val.isEmpty ? 'Enter a username' : null,
                                onChanged: (val) {
                                  setState(() => username = val);
                                },
                                obscureText: false,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
                                    fillColor: Color(0xffC4C4C4),
                                    filled: true),
                                style: TextStyle(

                                  fontSize: 18.0,
                                  color: Color(0xff2F3E46),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                Container(
                  width: 250,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xff1A936F),

                    child: Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC4C4C4),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                            ),
                            width: 200,
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (val) => val.isEmpty ? 'Enter a password' : null,
                                onChanged: (val) {
                                  setState(() => password = val);
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    fillColor: Color(0xffC4C4C4),
                                    filled: true),
                                style: TextStyle(

                                  fontSize: 18.0,
                                  color: Color(0xff2F3E46),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


              Container(
                width: 250,
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xff1A936F),

                  child: Form(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffC4C4C4),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)),
                          ),
                          width: 200,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (val) => val.isEmpty ? 'Enter an email' : null,
                              onChanged: (val) {
                                setState(() => confirmPassword = val);
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Confirm Password',
                                  fillColor: Color(0xffC4C4C4),
                                  filled: true),
                              style: TextStyle(

                                fontSize: 18.0,
                                color: Color(0xff2F3E46),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

                  Container(
                    width: 150,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () async {
                          if(confirmPassword != password)
                          {
                            setState(() => error = 'Passwords dont match');
                          }
                          else if (_formKey.currentState.validate()) {
                          dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                          if(result == null) {
                            setState(() => error = 'Invalid email or password');
                          }
                        }
                      },
                      color: Color(0xff1A936F),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: Text('Sign Up', style: TextStyle(fontSize: 18,color: Color(0xff2F3E46))),
                    ),

                  ),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                  Text('Already have an account?', style: TextStyle(color: Color(0xffA5A5A5))),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginScreen())
                      );
                    },
                    child: Text('Login', style: TextStyle(color: Color(0xff1A936F)))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}