import 'package:flutter/material.dart';
import 'home_page.dart';
import 'memory_gage.dart';
import 'result_page.dart';


class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
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
                                    'DigiGage',
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
                                child:Column(
                                    children:<Widget>[
                                        Text(
                                            'スタート',
                                            style: TextStyle(
                                                  fontSize:36,
                                                  color: Colors.black,
                                                  letterSpacing:5,
                                                  ),
                                                  ),
                                        Text(
                                            '戦績',
                                            style: TextStyle(
                                                  fontSize:36,
                                                  color: Colors.black,
                                                  letterSpacing:5,
                                                  ),
                                                  ),
                                        Text(
                                            '設定',
                                            style: TextStyle(
                                                  fontSize:36,
                                                  color: Colors.black,
                                                  letterSpacing:5,
                                                  ),
                                                  ),
                                        Text(
                                            '終了',
                                            style: TextStyle(
                                                  fontSize:36,
                                                  color: Colors.black,
                                                  letterSpacing:5,
                                                  ),
                                                  ),
                                    ],
                                ),
                            )
                        )
                    ],
                        ),
                )
            );
            }
}