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
    this.bottomTitle = 'TOPページ',
    this.topChild,
    this.topHeight = 163,
    this.bottomHeight = 50,
    this.bottomChild,
    this.cardHeight = 581,
    this.backgroundColor = const Color(0xFF0F534D),
    this.titleColor = const Color(0xFF8BDA9E),
    this.bottomTitleColor = const Color(0xFF000000),
    this.showTopButton =true,
  });
  //↑定義を書いている

  final Widget body;
  final String title;
  final String bottomTitle;
  final Widget? topChild;
  final Widget? bottomChild;
  final double topHeight;
  final double bottomHeight;
  final double cardHeight;
  final Color backgroundColor;
  final Color titleColor;
  final Color bottomTitleColor;
  final bool showTopButton;
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
              child: topChild ?? Text(
                title,
                style: TextStyle(
                  fontSize: 36,
                  letterSpacing: 5,
                  color: titleColor,
                ),
              ),
            ),
          ),
          if (showTopButton)
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Container(
                  height: bottomHeight,
                  width: 200,
                    decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black,),),
                child: TextButton(
                        onPressed:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => HomePage()),
                          );},
                        child: bottomChild ?? Text(
                              bottomTitle,
                              style: TextStyle(
                                  fontSize:20,
                                  letterSpacing:5,
                                  color: bottomTitleColor,),
                            ),
                        ),
                      ),
                    ),
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