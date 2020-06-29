import 'package:UpsideBudget/models/user.dart';
import 'package:UpsideBudget/screens/Home/Home.dart';
import 'package:UpsideBudget/screens/authenticate/authenticate_test.dart';
import 'package:UpsideBudget/screens/FrontendDevScreens/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:UpsideBudget/screens/FrontendDevScreens/loginScreen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    //The Wrapper can return the home or login page
    if(user == null)
    {
<<<<<<< HEAD
      return Authenticate(); // change this to stateless widget name
=======
<<<<<<< HEAD
      return RegisterScreen();
=======
      return loginScreen(); // change this to stateless widget name
>>>>>>> feature/LoginScreen
>>>>>>> develop
    }
    else
    {
     return Home(); 
    }
  }
}