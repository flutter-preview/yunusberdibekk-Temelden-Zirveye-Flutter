import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = 'Veli';
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              textScaleFactor: 1.2,
              style: ProjectStyles.welcomeStyle,
            ),
            Text('Welcome $name',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                textScaleFactor: 1.2,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: ProjectColors.welcomeColor)),
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      wordSpacing: 2,
      letterSpacing: 2,
      color: Colors.red,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.yellow;
}

class ProjectKeys {
  final String welcome = 'Hello there';
}
/* 
Bir sayfa yapılıyorsa güçleri material üzerinden geliyor.
Scaffold ile basit olarak bir sarmalama işlemi yapılabilir.
*/

