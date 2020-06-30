import 'package:UpsideBudget/screens/FrontendDevScreens/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:UpsideBudget/services/auth.dart';
import 'package:UpsideBudget/shared/constants.dart';
import 'package:UpsideBudget/screens/FrontendDevScreens/UI/CustomInputField.dart';

class loginScreen extends StatefulWidget{

  @override
  _loginScreenState createState() => _loginScreenState();

}


class _loginScreenState extends State<loginScreen> {


  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
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
           height: 400,
           width: 400,
           child: Form(
             key: _formKey,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[


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
                             validator: (val) => val.length < 6 ? 'Password must be at least 6 characters' : null,
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
                   height: 50,
                   width: 150,
                 child: RaisedButton(
                    onPressed:()
                    async {
                      if (_formKey.currentState.validate()) {
                        dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                        if(result == null) {
                          setState(() => error = 'Invalid email or password');
                        }
                      }
                    },
                    color: Color(0xff1a936f),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),


                   child: Text('Sign In', style: TextStyle( fontSize: 18, color: Color(0xff2F3E46)
                   ),
                   ),
                 ),
                 ),

                 Text(
                   error,
                   style: TextStyle(color: Colors.red, fontSize: 14.0),
                 ),
                 Text('Dont have an account?',
                     style: TextStyle(
                       color: Color(0xffa5a5a5))
                     ),
                 GestureDetector(
                   onTap: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => RegisterScreen())
                     );
                   },
                     child: Text('Create An Account', style: TextStyle( color: Color(0xff1a936f))
                 ),
                 ),


       ],

                   ),
           ),

               ),



                 ),
               ),
           );
  }
}



