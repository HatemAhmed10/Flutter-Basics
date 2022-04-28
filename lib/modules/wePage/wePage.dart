import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WePage extends StatelessWidget {
  const WePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                icon:  CircleAvatar(
                                  radius: 50.0,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                                ),
                                onPressed: () {
                                },
                              ),
                            ),
                            Expanded(
                              flex: 4 ,
                              child: Column(
                                children: [
                                  Text("Hello,Hatem Ahmd" ,
                                    textAlign: TextAlign.end,
                                    overflow: TextOverflow.ellipsis,
                                    style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                  Text("015565*****" ,
                                    textAlign: TextAlign.left,
                                    style:TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                icon: Row(
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        bottom: 20.0,
                                      ),
                                      child: CircleAvatar(
                                        radius: 4.0,
                                        backgroundColor: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                },
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                icon: Icon(
                                  Icons.search,
                                  size: 25.0,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 200,
                                  height: 200,
                                  //BoxDecoration Widget
                                  decoration: BoxDecoration(//DecorationImage
                                    border: Border.all(
                                      color: Colors.white10,
                                      width: 5,
                                    ), //Border.all
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.all_inclusive_outlined,
                                        size: 130.0,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 5,),
                                      Text("750 GB Remaining of 1.0 TB" ,
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style:TextStyle(color: Colors.purple, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                      Text("Super speed 1-" ,
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style:TextStyle(color: Colors.purple, fontSize: 15, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),//BoxDecoration
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Expanded(
                              child: Container(
                                child: Text("Used" ,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text("Used" ,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Expanded(
                              child: Container(
                                child: Text("250.0 GB" ,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Expanded(
                              child: Container(
                                child: Text("Expire Data" ,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(width: 80,),
                            Expanded(
                              child: Container(
                                child: Text("12/04/2022" ,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color: Colors.purple, fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 64,),
                      Container(
                        width: double.infinity,
                        height: 50,
                        //BoxDecoration Widget
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          border: Border.all(
                            color: Colors.white10,
                            width: 5,
                          ), //Border.all
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: RaisedButton(
                          color: Colors.white10, // background
                          textColor: Colors.white, // foreground
                          onPressed: () { },
                          child: Row(
                            children: [
                              Expanded(child: Icon(Icons.add)),
                              Expanded(
                                flex: 2,
                                child: Text("Add-Ons" ,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        )//BoxDecoration
                      ),
                      SizedBox(height: 10,),
                      Container(
                          width: double.infinity,
                          height: 50,
                          //BoxDecoration Widget
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            border: Border.all(
                              color: Colors.white10,
                              width: 5,
                            ), //Border.all
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: RaisedButton(
                              color: Colors.white10, // background
                              textColor: Colors.white, // foreground
                              onPressed: () { },
                              child: Row(
                                children: [
                                  Expanded(child: Icon(Icons.next_plan_sharp)),
                                  Expanded(
                                    flex: 2,
                                    child: Text("Manage Plan" ,
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                          )//BoxDecoration
                      ),
                      SizedBox(height: 10,),
                      Container(
                          width: double.infinity,
                          height: 50,
                          //BoxDecoration Widget
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            border: Border.all(
                              color: Colors.white10,
                              width: 5,
                            ), //Border.all
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: RaisedButton(
                              color: Colors.white10, // background
                              textColor: Colors.white, // foreground
                              onPressed: () { },
                              child: Row(
                                children: [
                                  Expanded(child: Icon(Icons.electrical_services)),
                                  Expanded(
                                    flex: 2,
                                    child: Text("Balance Services" ,
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                          )//BoxDecoration
                      ),
                      SizedBox(height: 10,),
                      Container(
                          width: double.infinity,
                          height: 50,
                          //BoxDecoration Widget
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            border: Border.all(
                              color: Colors.white10,
                              width: 5,
                            ), //Border.all
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: RaisedButton(
                              color: Colors.white10, // background
                              textColor: Colors.white, // foreground
                              onPressed: () { },
                              child: Row(
                                children: [
                                  Expanded(child: Icon(Icons.account_balance_wallet)),
                                  Expanded(
                                    flex: 2,
                                    child: Text("Balance Services" ,
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                          )//BoxDecoration
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20,top: 0,right: 20,bottom: 10),
        child: BottomNavigationBar(
          backgroundColor: Colors.white10,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            //cubit.changeIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.zoom_out_map_rounded,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: '',
            ),

          ],
        ),
      ),
    );
  }
}
