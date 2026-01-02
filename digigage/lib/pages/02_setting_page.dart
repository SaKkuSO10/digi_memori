import 'package:flutter/material.dart';
import '01_home_page.dart';
import '02_setting_page.dart';
import '03_result_page.dart';
import '04_preparetion_page.dart';
import '05_preparetion_page2.dart';
import '06_regist_page.dart';
import '07_regist_page2.dart';
import 'memory_gage.dart';

class SettingPage extends StatefulWidget {
    const SettingPage({super.key});

    @override
    State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage>{
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Container(
                child: Stack(
                    children:[
                        Container(
                            color: const Color(0xFF0F534D),
                            width: double.infinity,
                            height: double.infinity,
                        ),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 163,
                                alignment: Alignment.center,
                                child: const Text(
                                    '設定',
                                    style: TextStyle(
                                        fontSize:36,
                                        letterSpacing:5,
                                        color: const Color(0xFF8BDA9E),
                                        )
                                    )
                                    ),
                            ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 100,
                            ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child:Container(
                                width: double.infinity,
                                height: 581,
                                color: Colors.white,
                                
                                        ),
                        )
                                    ],
                                ),
                            )
                        );
            }
}