import 'package:we/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:we/modules/done_tasks/done_tasks_screen.dart';
import 'package:we/modules/new_tasks/new_tasks_screen.dart';
import 'package:we/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../network/local/cache_helper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  void SingUp({@required String? username ,@required String? password}){
    CacheHelper.putString(key: "userinformation", value: [username!,password!]);
    emit( SaveDatainSharedPreferencesState());
  }

  List<String>? FinalData ;
  void LogIn(){
    FinalData = CacheHelper.getString(key: "userinformation");
    emit(GetDatainSharedPreferencesState());

  }


  void LogOut(){
    CacheHelper.RemoveString(key: "userinformation");
    emit(RemovDatainSharedPreferencesState());
  }



}







