import 'package:flutter/material.dart';
import 'screens/homePage.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      highlightColor: Colors.greenAccent,
    ),
    home: HomePage(),
  ));
}