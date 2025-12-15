import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Column(
        children:[
          Row(
            children: List.generate(10, (i){
              final display = 10 - i;
              final value = -(10 - i);
              return Expanded(
                child: InkWell(
                  onTap:() => setState(() => memory == value),
                  child: Center(
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
          );    
          },
        ),
      ),
      Row(children:[Text('0')]),
      Row(
            children: List.generate(10, (i){
              final display = 10 - i;
              final value = -(10 - i);
              return Expanded(
                child: InkWell(
                  onTap:() => setState(() => memory == value),
                  child: Center(
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
          );    
          },
        ),
      ),
    ],
    ),
  );
}
}