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
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class MemoryPage extends StatefulWidget {
  const MemoryPage({super.key});
  @override
  State<MemoryPage> createState() => _MemoryPageState();
}

class _MemoryPageState extends State<MemoryPage> {
  int memory = 0;
  int selectedValue = 0;
  //最後に選択した値を保持する
  int turnCount = 1;
  //ターン数のカウント
  int minutes = 25;
  int seconds = 00;
  late DateTime _endTime; //タイマーの終了時刻を保持


  static const int maxMem = 10;
  static const int minMem = -10;

  @override
  void initState(){
    super.initState();
    _endTime = DateTime.now().add(
      Duration(minutes: minutes, seconds: seconds),
    );
  }

  @override
  Widget build(BuildContext context){
    return AppFrame(
          topChild: SafeArea(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,10,0,0),
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Player2',
                            style: TextStyle(
                              fontSize:16,
                              color: Colors.blue,
                            )),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                    MaterialPageRoute(builder: (context) => SettingPage()),
                                );
                              },
                child: Text('MENU'),
                ),],
        ),),
          ),
      bottomChild: SafeArea(
            child: Align(
                  alignment: Alignment.bottomRight,
                  child:
                  Text('Player1',
                      style: TextStyle(
                          fontSize:16,
                          color: Colors.orange,
                          )),),
                ),
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
                  onTap:() => setState(() => selectedValue = value),
                  child: Center(
                    child: Transform.rotate(
                        angle: 360 * pi / 360,
                        alignment: Alignment.center,
                        child: Container(
                          width:46,
                          height:46,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            color:selectedValue == value ? Colors.grey:Colors.black,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                              ),
                            ),     
                          child: Text(
                            display.toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[ElevatedButton(
                    child: Text('ターン： $turnCount'),
                    onPressed:(){setState(() =>turnCount += 1);},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),),
      Column(children:[ElevatedButton(child: const Text('0'),
                     style: ElevatedButton.styleFrom(
                      backgroundColor:selectedValue == 0 ? Colors.grey:Colors.yellow,
                      foregroundColor: Colors.black,
                      shape: const CircleBorder(
                        side: BorderSide(
                          color:Colors.red,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),),
                      onPressed:(){setState(() => selectedValue = 0);},
              ),
              TimerCountdown(
                format: CountDownTimerFormat.minutesSeconds,
                endTime: _endTime,
        onEnd:(){},
      ),
    ],
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
              final value = (10 - i);
              return Expanded(
                child: InkWell(
                  onTap:() => setState(() => selectedValue = value),
                  child: Center(
                  child: Container(
                    width: 46,
                    height: 46,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:selectedValue == value ? Colors.grey:Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,),
                    ),
                    child: Text(
                        display.toString(),
                        style:TextStyle(
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