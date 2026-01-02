import 'package:flutter/material.dart';
import '01_home_page.dart';
import '02_setting_page.dart';
import '03_result_page.dart';
import '04_preparetion_page.dart';
import '05_preparetion_page2.dart';
import '06_regist_page.dart';
import '07_regist_page2.dart';
import 'app_frame.dart';
import 'dart:math';

class MemoryPage extends StatefulWidget {
  const MemoryPage({super.key});
  @override
  State<MemoryPage> createState() => _MemoryPageState();
}

class _MemoryPageState extends State<MemoryPage> {
  int memory = 0;


  static const int maxMem = 10;
  static const int minMem = -10;

  @override
  Widget build(BuildContext context){
    return AppFrame(
      title: '',
      topHeight: 51,
      bottomHeight: 51,
      cardHeight: 288,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          //上段のゲージ
          Row(
            children: List.generate(10, (i){
              final display = 10 - i;
              final value = -(10 - i);
              return Expanded(
                child: InkWell(
                  onTap:() => setState(() => memory == value),
                  child: Center(
                    child: Transform.rotate(
                        angle: 360 * pi / 360,
                        alignment: Alignment.center,
                      child: Text(
                        display.toString(),
                        style:const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),),
                ),
              ),
            ),
          );
          },
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[ElevatedButton(
                    child: const Text('TURN END'),
                    onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => ResultPage()),
                        );},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),),
      ElevatedButton(child: const Text('0'),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                      shape: const CircleBorder(
                        side: BorderSide(
                          color:Colors.red,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),),
                      onPressed:(){},
              ),
      ElevatedButton(
                    child: const Text('GAME SET'),
                    onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => ResultPage()),
                        );},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),),]),
                    //下段のマーカー↓
      Row(
            children: List.generate(10, (i){
              final display = 10 - i;
              final value = -(10 - i);
              return Expanded(
                child: InkWell(
                  onTap:() => setState(() => memory == value),
                  child: Center(
                  child: Container(
                    width: 46,
                    height: 46,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,),
                    ),
                    child: Text(
                        display.toString(),
                        style:const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                  ),
                ),
              ),
            );
            }),
      ),
        ],
      ),
    );
  }
}