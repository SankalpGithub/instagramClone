import 'package:flutter/material.dart';
import 'screens/Login.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
          theme: ThemeData(
            brightness: Brightness.light, // Light mode
            primaryColor: Colors.blue,
            canvasColor: Colors.white,
          ),

          darkTheme: ThemeData(
            brightness: Brightness.dark, // Dark mode
            primaryColor: Colors.blueGrey, // Define primary colors for dark mode
            canvasColor: Colors.black,
          ),
          themeMode: ThemeMode.system, // Automatically switch based on system setting
        debugShowCheckedModeBanner: false,
      home: Login()
    );
  }
}


