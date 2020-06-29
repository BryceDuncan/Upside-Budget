import 'package:flutter/material.dart';
import 'package:UpsideBudget/services/auth.dart';
import 'package:UpsideBudget/shared/constants.dart';
import 'package:UpsideBudget/screens/authenticate/register_test.dart';
class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({ this.toggleView });

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //Text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('Please sign in'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Register'),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Register()),
                  );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              //Email
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Email'),
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),

              //Password
              SizedBox(height: 20.0),
              TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Password'),
                obscureText: true,
                  validator: (val) => val.length < 6 ? 'Password must be at least 6 characters' : null,
                onChanged: (val) {
                  setState(() => password = val);
                }
              ),

              //Sign in button
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.grey[400],
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white)
                ),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if(result == null) {
                      setState(() => error = 'Invalid email or password');
                    }
                  }
                }
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              )
            ],
          ),


        )
      )
    );
  }
}