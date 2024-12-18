// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

// store into page
Future<void> setIntroPage() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('intro_page', false);
}

//get intro page
Future<bool> isForTheFirstTime() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('intro_page') ?? true;
}

// // store night mode
// Future<void> setNightMode(bool isNightMode) async {
//   final prefs = await SharedPreferences.getInstance();
//   await prefs.setBool('nightMode', isNightMode);
// }

// // get night mode
// Future<bool?> getNightMode() async {
//   final prefs = await SharedPreferences.getInstance();
//   return prefs.getBool('nightMode');
// }

// store token
Future<void> saveToken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', token);
}

// get token
Future<String?> getToken() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

// remove token
Future<void> removeToken() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('token');
}
