import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon Learn View"),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.outlined_flag,
                color: Theme.of(context)
                    .colorScheme
                    .background, //Theme ile okursam farklı temalara göre renk değişebiliyor.
                size: IconSizes().iconSmall,
              )),
          const SizedBox(height: 50),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.outlined_flag,
                color: IconColors().froly,
                size: IconSizes().iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.outlined_flag,
                color: IconColors().froly,
                size: IconSizes().iconSmall,
              ))
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2 = 40;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
