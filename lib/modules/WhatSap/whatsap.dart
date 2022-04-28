
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gui/modules/showmassage/ShowMassage.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key key}) : super(key: key);

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
                        child: Text("WhatsApp" ,
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
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Container(
                  color: Colors.white10,
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        child: IconButton(
                          icon: Icon(
                            Icons.camera_alt,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                          },
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                onPressed: () { },
                                child: Text(
                                  'CHATS',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () { },
                                child: Text(
                                  'STATUS',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () { },
                                child: Text(
                                  'CALLS',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 12),
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      child: Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    'https://avatars.githubusercontent.com/u/34492145?v=4'),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex:3 ,
                                      child : Container(
                                        width: 20,
                                        height: 40,
                                        alignment: AlignmentDirectional.topStart,
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new ShowMassage()));
                                          },
                                          child: Text(
                                            'حاتم احمد ',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      )
                                    ),
                                    Expanded(
                                      child: Text(
                                        '7:13 am',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children:
                                  [
                                    Expanded(
                                      child: Text(
                                        'ليه كده بس',
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 10.0,
                                      child: Text("50")
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 25.0,
                    ),
                    itemCount: 15,
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
