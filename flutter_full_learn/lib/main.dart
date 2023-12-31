import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/color_learn.dart';
import 'package:flutter_full_learn/101/note_demos_view.dart';

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
          cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          errorColor: ColorItems
              .sulu, //Tüm projelerde kullanılmasını istiyorum. //Burada yazarak oluşturulan tüm appbarlarda genel olmasını sağlıyoruz.
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.white, //Colors.red veya theme den oku.
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: const NoteDemoView(),
    );
  }
}

/*
MaterialApp 
CupertinoApp = daha çok iOS componentlerine yönelik olan yaklaşım.
*/