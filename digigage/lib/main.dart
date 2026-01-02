import 'package:flutter/material.dart';
import 'pages/01_home_page.dart';
import 'pages/02_setting_page.dart';
import 'pages/03_result_page.dart';
import 'pages/04_preparetion_page.dart';
import 'pages/05_preparetion_page2.dart';
import 'pages/06_regist_page.dart';
import 'pages/07_regist_page2.dart';
import 'pages/memory_gage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'DIGIMEMORI',
      initialRoute: '/',
      routes:{
        '/':(context) => const HomePage(),
        '/memory':(context) => MemoryPage(),
        '/result':(context) => ResultPage(),
      },
    );
  }
}