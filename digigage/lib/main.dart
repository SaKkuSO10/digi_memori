import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/memory_gage.dart';
import 'pages/result_page.dart';

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