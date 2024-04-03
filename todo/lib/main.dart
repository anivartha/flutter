import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/boxes.dart';

// Screens 
import 'package:todo/screens/addScreen.dart';
import 'package:todo/screens/homeScreen.dart';
import 'package:todo/screens/splash.dart';
import 'package:todo/services/sharedPrefs.dart';

import 'package:todo/todo.dart';
import 'package:hive/hive.dart';

void main() async{

  // await SharedPreferencesMan().init();

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

// Hive.registerAdapter(TodoAdapter());
  await Hive.openBox<Todo>("myBox");

  // final boxes = Boxes.getBox();



  // SharedPreferencesMan.i.setAppFirstOpen(true);
  // debugPrint("${SharedPreferencesMan.i.getAppFirstOpen()}");
// 
  runApp(MaterialApp(

    initialRoute: "/splash",

  routes: {
    "/" : (context) => Home(),
    "/splash" : (context) => MyWidget(),
    "/add" : (context) => addScreen(),
  }

  ));
}
