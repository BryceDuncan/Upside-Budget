import 'package:flutter/material.dart';

<<<<<<< HEAD
=======


>>>>>>> feature/LoginScreen
class CustomInputField extends StatelessWidget {

  Icon fieldIcon;
  String hintText;
<<<<<<< HEAD
  bool hidden;

  CustomInputField(this.fieldIcon,this.hintText,this.hidden);
=======
  bool password;


  CustomInputField(this.fieldIcon,this.hintText, this.password);
>>>>>>> feature/LoginScreen

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Color(0xff1A936F),
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
<<<<<<< HEAD
                  obscureText: hidden,
=======
                  obscureText: password,
>>>>>>> feature/LoginScreen
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      fillColor: Color(0xffC4C4C4),
                      filled: true),
                  style: TextStyle(
<<<<<<< HEAD
                    fontSize: 18.0,
=======
                    fontSize: 20.0,
>>>>>>> feature/LoginScreen
                    color: Color(0xff2F3E46),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> feature/LoginScreen
