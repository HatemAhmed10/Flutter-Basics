import 'package:flutter/material.dart';
import 'package:we/shared/network/local/cache_helper.dart';

import 'layout/home_layout.dart';
import 'modules/LogIn/LogIn.dart';
import 'modules/SignUp/SignUp.dart';

void main()  async {
  //Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

    List<String>? FinalData ;
    Widget widget;
    FinalData = CacheHelper.getString(key: "userinformation");
    if(FinalData == null){
      widget = LogIN () ;
    }else{
      widget = HomeLayout() ;
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: widget,
    );
  }
}