import 'package:flutter/material.dart';


class IncomeScreen extends StatefulWidget
{
  @override
  _IncomeScreenState createState() => _IncomeScreenState();
}

class _IncomeScreenState extends State<IncomeScreen> {

  final _formKeyIncomeScreen = GlobalKey<FormState>();
  int income = 0;

  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff1A936F),
        title: Text(
          'Income',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),

        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xff2F3E46),

          child: Center(
            child: Container(
              height: 200,
              width: 400,

                child: Form(
                  key: _formKeyIncomeScreen,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                    Container(
                      width: 295,
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
                                  Icons.attach_money,
                                  size: 40,
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
                                width: 225,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    validator: (val) => val.isEmpty ? 'Enter Valid Income' : null,
                                    onChanged: (val) {
                                      setState(() => income = val as int);
                                    },
                                    obscureText: false,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter Income',
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
                        height: 60,
                        width: 170,
                      child: RaisedButton(
                        color: Color(0xff1a936f),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Color(0xff2F3E46),
                            fontSize: 18,
                          ),
                        ),

                        onPressed: () {
                          throw UnimplementedError;
                        },
                      ),
                      ),
                    ],

                  ),


                ),

              ),

            ),

          ),

        );

  } // widget builder

} //  class