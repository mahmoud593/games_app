import 'package:flutter/material.dart';
import 'package:games_app/core/local/cashe_helper/cashe_helper.dart';
import 'package:games_app/core/local/shared_preference/shared_preference.dart';
import 'package:games_app/features/home/presentation/view/home_screen.dart';
import 'package:games_app/styles/theme_manger/theme_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  CashHelper.init();
  SharedPreferences.getInstance();
  UserDataFromStorage.getData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(context),
      home: const HomeScreen(),
    );
  }
}


