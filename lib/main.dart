import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './provider/data_provider.dart';
import 'screens/task_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
          title: 'To-do List app',
          theme: ThemeData(
            appBarTheme:
                AppBarTheme(backgroundColor: Color(0xFF344FA1), elevation: 0),
            scaffoldBackgroundColor: Color(0xFF344FA1),
          ),
          initialRoute: WelcomeScreen.route_name,
          routes: {
            WelcomeScreen.route_name: (context) => WelcomeScreen(),
            TaskScreen.routeName: (context) => TaskScreen(),
          }),
    );
  }
}
