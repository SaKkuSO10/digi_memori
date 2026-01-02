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

class HomePage extends StatelessWidget {
    const HomePage({super.key});

    @override
    Widget build(BuildContext context){
        return AppFrame(
            body:Column(
             children:<Widget>[
                SizedBox(height:80),
                TextButton(
                  onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => MemoryPage()),
                    );
                },
                child: Text(
                    'スタート',
                    style: TextStyle(
                    fontSize:36,
                    color: Colors.black,
                    letterSpacing:5,
                    ),
                ),
                ),       
                TextButton(
                    onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => ResultPage()),
                        );
                    },
                    child: Text('戦績',
                                style: TextStyle(
                                    fontSize:36,
                                    color: Colors.black,
                                    letterSpacing:5,
                                                ),
                                    ),
                ),
                TextButton(
                    onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context) => SettingPage()),
                        );
                    },
                    child: Text('設定',
                                style: TextStyle(
                                    fontSize:36,
                                    color: Colors.black,
                                    letterSpacing:5,
                                                ),
                                            ),
                            ),
                TextButton(
                    onPressed:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => ResultPage()),
                            );
                        },
                        child: Text('終了',
                                    style: TextStyle(
                                        fontSize:36,
                                        color: Colors.black,
                                        letterSpacing:5,
                                                  ),
                                                ),
                            ),
                                            ],
                                        ),
                                    );
            }
        }