import 'package:flutter/material.dart';
import 'package:UpsideBudget/screens/FrontendDevScreens/loginScreen.dart';


class CustomInputField extends StatefulWidget{

  final Icon fieldIcon;
  final String hintText;
  final bool hidePassword;
  CustomInputField(this.fieldIcon,this.hintText,this.hidePassword);
  @override
  _CustomInputFieldState createState() => _CustomInputFieldState(this.fieldIcon,this.hintText,this.hidePassword);

}

class _CustomInputFieldState extends State<CustomInputField>{

  final Icon fieldIcon;
  final String hintText;
  final bool hidePassword;
  String email = '';
  String password = '';
  _CustomInputFieldState(this.fieldIcon,this.hintText,this.hidePassword);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: fieldIcon,
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
                    obscureText: hidePassword,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hintText,
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
    );
  }
}
