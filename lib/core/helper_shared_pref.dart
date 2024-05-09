import 'package:recipes_app_flutter/core/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HelperSharedPref {
  late SharedPreferences sharedPreferences;

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  setUserInfo(int id) async => await sharedPreferences.setInt(AUTH_USER_ID, id);

  getUserInfo() => sharedPreferences.getInt(AUTH_USER_ID);

  removeUserInfo() async => await sharedPreferences.clear();
}
