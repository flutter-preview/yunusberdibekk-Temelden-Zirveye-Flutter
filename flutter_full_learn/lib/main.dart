import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/scafffold_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: ScaffoldLearnView(),
    );
  }
}

/*
MaterialApp 
CupertinoApp = daha çok iOS componentlerine yönelik olan yaklaşım.
*/