import 'package:UpsideBudget/screens/authenticate/sign_in_test.dart';
import 'package:UpsideBudget/screens/wrapper.dart';
import 'package:UpsideBudget/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
        value: AuthService().user,
         child: MaterialApp(
        //Change Wrapper() to the screen you would like to test
        home: Wrapper(),
      ),
    );
  }
}
