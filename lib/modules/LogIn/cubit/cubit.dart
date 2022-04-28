
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we/modules/LogIn/cubit/states.dart';

import '../../../shared/network/local/cache_helper.dart';

class WeLoginCubit extends Cubit<WeLoginStates> {
  WeLoginCubit() : super(WeLoginInitialState());
  static WeLoginCubit get(context) => BlocProvider.of(context);


  List<String>? FinalData ;
  void LogIn(){
    FinalData = CacheHelper.getString(key: "userinformation");
    emit(GetDatainSharedPreferencesState());

  }

}
