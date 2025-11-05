import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/memory_gage.dart';
import 'pages/result_page.dart';


class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
    bool _menuOpen = false;
    //bool データ型（true/false）　
    //menuOpenは変数名。＝falseでメニューが閉じている状態と現している

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: SafeArea(
                child: Center(
                    child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                                const Text(
                                    'デジメモリー（仮）',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing; 1.2,
                                    ),
                                ),
                                const SizedBox(height: 24),
                                // 余白を作るためのconst↑
                                // Startボタン⇆メニューボタンの切り替え
                                AnimatedCrossFade(
                                    duration: const Duration(milliseconds:250),
                                    crossFadeState: _menuOpen
                                        ? CrossFadeState.showSecond
                                        : CrossFadeState.showFirst,
                                    firstChild: FilledButton(
                                        onPressed:() => setState(()=> _menuOpen = true),
                                        child: const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 28, verical: 14),
                                            child: Text('START', style: TextStyle(fontSize: 18)),      
                                        ),
                                    ),
                                    secondChild: _MenuCard(
                                        onClose: () => setState(()=> _menuOpen = false),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}

class _MenuCard extends StatelessWidget{
    const _MenuCard({required this.onClose});
    final VoidCallback onClose;

    @override
    Widget Build(BuildContext context){
        return Card(
            elevation: 4,

        )

    }
}