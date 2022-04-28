import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

List?  data ;
class CacheHelper
{
  static SharedPreferences? sharedPreferences;

  static init() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putString({
    @required String? key,
    @required List<String>? value,
  }) async
  {
    return await sharedPreferences!.setStringList(key!, value!);
  }


  static List<String>? getString({
    @required String? key,
  })
  {
    return sharedPreferences!.getStringList(key!);
  }


  static void RemoveString({
    @required String? key,
  })
  {
    sharedPreferences!.remove(key!);
  }
}