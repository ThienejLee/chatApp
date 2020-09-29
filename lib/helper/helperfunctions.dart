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

  static Future<bool> saveUserNameSharedPreference(bool userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(sharedreferenceUserNameKey, userName);
  }

  static Future<bool> saveUserEmailSharedPreference(bool userEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(sharedreferenceUserEmailKey, userEmail);
  }

  // getting data from SharedPreference

  static Future<void> getUserLoggedInSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(sharedreferenceUserLoggedInKey);
  }
  static Future<void> getUserNameSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(sharedreferenceUserNameKey);
  }
  static Future<void> getUserEmailSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getBool(sharedreferenceUserEmailKey);
  }
  
}
