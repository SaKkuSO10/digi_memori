import 'package:flutter/material.dart';
import '01_home_page.dart';
import '02_setting_page.dart';
import '03_result_page.dart';
import '04_preparetion_page.dart';
import '05_preparetion_page2.dart';
import '06_regist_page.dart';
import '07_regist_page2.dart';
import 'memory_gage.dart';

class AppFrame extends StatelessWidget{
  const AppFrame({
    super.key,
    required this.body,
    this.title = 'DigiGage',
    this.topHeight = 163,
    this.bottomHeight = 100,
    this.cardHeight = 581,
    this.backgroundColor = const Color(0xFF0F534D),
    this.titleColor = const Color(0xFF8BDA9E),
  });
  //↑定義を書いている

  final Widget body;
  final String title;
  final double topHeight;
  final double bottomHeight;
  final double cardHeight;
  final Color backgroundColor;
  final Color titleColor;
  //↑受け取った値を入れておく箱を定義している

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children:[
          Container(color :backgroundColor),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: topHeight,
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 36,
                  letterSpacing: 5,
                  color: titleColor,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(height: bottomHeight),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: cardHeight,
              width: double.infinity,
              color: Colors.white,
              child: body,
            ),
          ),
        ],
        ),
      );
    }
  }
   