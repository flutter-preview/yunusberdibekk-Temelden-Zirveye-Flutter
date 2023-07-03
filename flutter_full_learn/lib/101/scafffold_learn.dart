import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold Samples"),
      ),
      body: const Text('Merhaba'),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), label: "Aaaa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), label: "Bbbb"),
        ]),
      ),
    );
  }
}

/* 
* Scaffold
? Scaffold bir iskeletttir. Toolbar, body ve bottomNavigationBar içerir.
? Bir uygulama ekranı geliştirecem ve işlem yapacak isem kullanacağım component scaffolddur.
*/