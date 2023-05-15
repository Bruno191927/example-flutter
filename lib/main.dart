import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:genshin_impact/home/character_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CharacterPage()
      ),
    );
  }
}