
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we/modules/SignUp/cubit/states.dart';

import '../../../shared/network/local/cache_helper.dart';

class WeSignUpCubit extends Cubit<WeSignUpStates> {
  WeSignUpCubit() : super(WeSignUpInitialState());
  static WeSignUpCubit get(context) => BlocProvider.of(context);



  void SingUp({@required String? username ,@required String? password}){
    CacheHelper.putString(key: "userinformation", value: [username!,password!]);
    emit( SaveDatainSharedPreferencesState());
  }


}
