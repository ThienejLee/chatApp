import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static String sharedreferenceUserLoggedInKey = "ISLOGGEDIN";
  static String sharedreferenceUserNameKey = "ISNAMEKEY";
  static String sharedreferenceUserEmailKey = "ISEMAILKEY";

  //saving data to SharePrefence

  static Future<bool> saveUserLoggedInSharedPreference(
      bool isUserLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(sharedreferenceUserLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSharedPreference(String userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedreferenceUserNameKey, userName);
  }

  static Future<bool> saveUserEmailSharedPreference(String userEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(sharedreferenceUserEmailKey, userEmail);
  }

  // getting data from SharedPreference

  static Future<bool> getUserLoggedInSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(sharedreferenceUserLoggedInKey);
  }
  static Future<String> getUserNameSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(sharedreferenceUserNameKey);
  }
  static Future<String> getUserEmailSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(sharedreferenceUserEmailKey);
  }
  
}
