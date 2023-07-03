import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 400,
            child: PngImage(name: ImageItems().book2),
          ),
          Image.network(
            "https://media.vanityfair.com/photos/5cd8e0b88d58ba426c1f90db/16:9/w_1280,c_limit/mad-queen-daenerys.jpg",
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String book = "book";
  final String book2 = "book2";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _pngWithPath,
      fit: BoxFit.contain,
    );
  }

  String get _pngWithPath => 'assets/png/$name.jpeg';
}
