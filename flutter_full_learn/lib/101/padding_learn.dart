import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPaddding.pagePadddingVertical, //best practice 101
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20) +
                  const EdgeInsets.symmetric(vertical: 10),
              child: const Text("Selam"),
            )
          ],
        ),
      ),
    );
  }
}

/*
* Birden fazla padding verilecekse ve bunlar aynı hizadan başlayacak ise padding'i ana widget'a vermek daha iyi olacaktır. Böylece içinde yer alan
tüm componentler padding alacaktır.
* + işlemi padding tarafında override edilmiştir. Böylece paddingler birleştirilebilir.
* Projede bir padding standartı olmalı. 
*/

class ProjectPaddding {
  static const pagePadddingVertical = EdgeInsets.symmetric(vertical: 10);
}
