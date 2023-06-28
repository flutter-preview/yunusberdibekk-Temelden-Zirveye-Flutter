import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String welcome = "Welcome Learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(welcome),
        actionsIconTheme: const IconThemeData(color: Colors.red, size: 20),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_book)),
          const Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
