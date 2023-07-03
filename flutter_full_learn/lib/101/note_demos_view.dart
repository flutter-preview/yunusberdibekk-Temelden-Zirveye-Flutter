import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemoView extends StatelessWidget {
  const NoteDemoView({super.key});
  final _tittle = "Create your first note";
  final _description = "Add a note ";
  final _createNote = "Create a note";
  final _importNotes = "Import notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().book2),
            _TittleWidget(tittle: _tittle),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTittleWidget(description: _description * 10),
            ),
            const Spacer(),
            _CreateButton(createNote: _createNote),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    super.key,
    required String createNote,
  }) : _createNote = createNote;

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.titleLarge,
            ))));
  }
}

class _SubTittleWidget extends StatelessWidget {
  // ignore: unused_element
  const _SubTittleWidget({Key? key, this.textAlign = TextAlign.center, required this.description}) : super(key: key);
  final TextAlign textAlign;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TittleWidget extends StatelessWidget {
  const _TittleWidget({
    required this.tittle,
  });
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 25);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
