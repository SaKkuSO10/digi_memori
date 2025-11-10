import 'package:flutter/material.dart';

class MemoryPage extends StatefulWidget {
  const MemoryPage({super.key});
  @override
  State<MemoryPage> createState() => _MemoryPageState();
}

class _MemoryPageState extends State<MemoryPage> {
  int memory = 0;
  static const int minMem = -10;
  static const int maxMem = 10;

  double _alignXFromMemory(int v) {
    final t = (v - minMem) / (maxMem - minMem);
    return t * 2 -1;
  }

  @override
  Widget build(BuildContext context){
    return Aspectratio(
      aspectRation; 2.2,
      child: Stack(
        alignment: Alignment.center,
        
      )

    )
  }
  


}