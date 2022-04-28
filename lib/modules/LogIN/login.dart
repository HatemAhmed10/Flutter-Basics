
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gui/modules/WhatSap/whatsap.dart';
import 'package:gui/modules/testpage/TestPage.dart';
import 'package:gui/modules/uploadfile/UploadFile.dart';
import 'package:gui/modules/wePage/wePage.dart';

class LogINPage extends StatefulWidget {

  @override
  _LogINPageState createState() => _LogINPageState();
}

class _LogINPageState extends State<LogINPage> {

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  void _incrementCounter() {
    setState(() {
      //_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: AlignmentDirectional.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Container(
                color: Colors.black,
               //child : Text("da"),
                child: Image.asset('assets/images/we1.png'),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  color: Colors.black,
                  alignment: AlignmentDirectional.topStart,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.black,
                        alignment: AlignmentDirectional.topStart,
                        child: Text("Sign In",
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                             style:TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                          ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22,right: 22,left: 22),
                        child: Container(
                          color: Colors.white10,
                          child: TextFormField(
                            controller: username,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              icon: new Icon(Icons.call,color: Colors.white,),
                              border: new OutlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.white)
                              ),
                              labelText: 'Service Number',
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Service Number',
                              hintStyle: TextStyle(color: Colors.white38),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22,right: 22,left: 22),
                        child: Container(
                          color: Colors.white10,
                          child: TextFormField(
                            controller: password,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              icon: new Icon(Icons.lock,color: Colors.white,),
                              border: new OutlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.white)
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(color: Colors.white38),
                            ),

                          ),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        child: TextButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.focused))
                                    return Colors.red;
                                  if (states.contains(MaterialState.hovered))
                                    return Colors.green;
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.white;
                                  return null; // Defer to the widget's default.
                                }),
                          ),
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new TestPage()));
                          },
                          child: Text(
                            'Forget Password ?',
                            style:TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        child: RaisedButton(
                          color: Colors.white, // background
                          textColor: Colors.purple, // foreground
                          onPressed: () {
                            print(username.text + password.text);
                            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new WePage()));
                          },
                          child: Text('Sign In'),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        child: TextButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.focused))
                                    return Colors.red;
                                  if (states.contains(MaterialState.hovered))
                                    return Colors.green;
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.white;
                                  return null; // Defer to the widget's default.
                                }),
                          ),
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new UploadFilePage()));
                          },
                          child: Text(
                            "Don't have an account ?",
                            style:TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        child: RaisedButton(
                          color: Colors.purple, // background
                          textColor: Colors.white, // foreground
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new WhatsApp()));
                          },
                          child: Text('Register'),
                        ),
                      ),


                    ],
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
