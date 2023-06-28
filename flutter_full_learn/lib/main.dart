import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/color_learn.dart';

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
      theme: ThemeData.dark().copyWith(
          errorColor: ColorItems.sulu,
          //Burada yazarak oluşturulan tüm appbarlarda genel olmasını sağlıyoruz.
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.red,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: const ColorLearn(),
    );
  }
}

/*
MaterialApp 
CupertinoApp = daha çok iOS componentlerine yönelik olan yaklaşım.
*/