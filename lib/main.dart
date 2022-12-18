import 'package:flutter/material.dart';

import 'GameSelectionScreen.dart';
import 'MenuScreen.dart';
import 'package:flame_audio/flame_audio.dart';
import 'SingInScreen.dart';
import 'gameOverScreen.dart';
import 'holyBattleScreen.dart';
import 'overBattleP1.dart';
import 'playMusicScreen.dart';
import 'storeScreen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home:storeScreen(),
    );
  }
}
