import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List x = ['a1','a2','a3'] ;


  List<bool> _isChecked;
  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(x.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Container(
        color: Colors.amberAccent,
        height: 400,
           child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Container(
                  child: CheckboxListTile(
                    title: Text(x[index]),
                    value: _isChecked[index],
                    onChanged: (val) {
                      setState(
                            () {
                          _isChecked[index] = val;
                          print(x[index]);
                        },
                      );
                    },
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 10.0,
                ),
                itemCount: x.length),
      ),
    );
  }
}
