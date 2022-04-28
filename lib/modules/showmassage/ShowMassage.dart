import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowMassage extends StatelessWidget {
  const ShowMassage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.white10,
                  title: Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text("ShowMassage" ,
                            textAlign: TextAlign.left,
                            style:TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.settings_rounded,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
