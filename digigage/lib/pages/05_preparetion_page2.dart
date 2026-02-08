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

class PreparetionPage2 extends StatefulWidget {
    const PreparetionPage2({super.key});

    @override
    State<PreparetionPage2> createState() => _PreparetionPage2State();
}

class _PreparetionPage2State extends State<PreparetionPage2>{

    String? isSelectedItem2;
    @override
    Widget build(BuildContext context){
        return AppFrame(
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
                                    'ゲーム設定',
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
                                height: 50,
                            ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child:Container(
                                width: double.infinity,
                                height: 581,
                                color: Colors.white,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:[
                                        Container(
                                            width:double.infinity,
                                            height:100,
                                            child: Row(children:[
                                                Text(
                                                'ゲームモード',
                                                style: TextStyle(
                                                fontSize:20,
                                                color:Colors.black)
                                            ),
                                           
                                            Expanded(
                                                child:Container(
                                                  decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.black),
                                                        ),
                                                  height:20,
                                                    child: DropdownButton(
                                                    hint: Text('選択してください'),
                                                    items: const[
                                                        DropdownMenuItem(
                                                            child:Text('フリー対戦'),
                                                            value:'フリー対戦'
                                                        ),
                                                        DropdownMenuItem(
                                                            child:Text('TB'),
                                                            value:'TB'
                                                        ),
                                                    ],
                                                    onChanged:(String? value){
                                                            setState((){
                                                               isSelectedItem2 = value;
                                                            });
                                                        },
                                                        value: isSelectedItem2,
                                                    ),
                                                ),)
                                            ],)

                                        )
                                    ]

                                )
                                        ),
                                    ),
                                ],
                            ),
                        )
                    );
                }
            }