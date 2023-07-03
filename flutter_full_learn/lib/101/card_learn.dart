import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const _CustomCard(
            child: SizedBox(
              width: 100,
              height: 100,
            ),
          ),
          const _CustomCard(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Center(
                child: Text("Selam"),
              ),
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            shape: const CircleBorder(),
            child: const SizedBox(
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(margin: ProjectMargins.cardMargin, child: child);
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

/* 
? Card Componenti
* Ekranda biraz önde durur. margin padding'in dıştan verilmiş kısmıdır. 
*/

/* 
? Borders
* StadiumBorder(),
* CircleBorder(),
* RoundedRectangleBorder()
* final roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
          20)); //Eğer daha bütün cardlar için olacak ise main.dart içerisinden cardTheme içinden border radius'u verebilirsin.
*/
