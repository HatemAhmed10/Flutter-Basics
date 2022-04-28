import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadFilePage extends StatefulWidget {

  @override
  _UploadFilePageState createState() => _UploadFilePageState();
}

class _UploadFilePageState extends State<UploadFilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text("Upload File"),
        ),
        body: Container(
          constraints: BoxConstraints(maxWidth: 400),
          child: ElevatedButton(
            child: Text('Pick File'),
            onPressed: () async{
              print("da");
              FilePickerResult result = await FilePicker.platform.pickFiles();
            },
          ),
        ),
      ),
    );
  }
}