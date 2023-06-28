import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).errorColor,
        child: const Text("Sample"),
      ),
    );
  }
}

class ColorItems {
  static const Color porshe = const Color(0xffED9761);

  static const Color sulu = const Color.fromRGBO(198, 237, 97, 1);
}
