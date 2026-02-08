import 'package:flutter/material.dart';
import '01_home_page.dart';
import '02_setting_page.dart';
import '03_result_page.dart';
import '04_preparetion_page.dart';
import '05_preparetion_page2.dart';
import '06_regist_page.dart';
import '07_regist_page2.dart';
import 'memory_gage.dart';
import 'app_frame.dart';

class PreparetionPage extends StatefulWidget {
    const PreparetionPage({super.key});

    @override
    State<PreparetionPage> createState() => _PreparetionPageState();
}

class _PreparetionPageState extends State<PreparetionPage>{
    @override
    Widget build(BuildContext context){
        return AppFrame(
            body:Stack(
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
                                    '対戦準備',
                                    style: TextStyle(
                                        fontSize:36,
                                        letterSpacing:5,
                                        color: const Color(0xFF8BDA9E),
                                        ),
                                    ),
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
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                        Container(
                                            width: double.infinity,
                                            height: 100,
                                            decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(color: Colors.black),
                                                        borderRadius: BorderRadius.circular(20.0),),
                                            child:TextButton(
                                            onPressed:(){
                                                    Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder:(context) => PreparetionPage2()),
                                                        );
                                                },
                                      child: Text('➕',
                                      style: TextStyle(
                                        fontSize:36,
                                        color: Colors.black,
                                        ),
                                    ),
                                )),
                                        const SizedBox(height:80),
                            ],
                        ),
                    ),
                        ),
                ],
            ),
        );
    }
}