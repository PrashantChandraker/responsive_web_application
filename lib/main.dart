//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_web_application/pages/home.dart';
import 'package:responsive_web_application/utils/colors.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prashant Web_App',
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
        brightness:Brightness.dark,
        primaryColor: AppColors.primary,
        
      ),
      home: const Home(),
    );
  }
}