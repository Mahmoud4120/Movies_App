import 'package:flutter/material.dart';

import 'home/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: { HomeScreen.routename : (_)=> HomeScreen()
      },
      initialRoute: HomeScreen.routename,
    );
  }
}
