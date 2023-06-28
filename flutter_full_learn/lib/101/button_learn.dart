import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text("Save"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              //custom button yazmak için.
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            })),
          ),
          const ElevatedButton(
            onPressed: null, //Null verilirse tıklanma özelliği gitmiş oluyor.
            child: Text("Finish"),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.abc_outlined),
          ),
          SizedBox(
            width: 100,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10)),
              onPressed: () {
                //Servise istek at. Sayfanın rengini düzenle. vb.
              },
              child: const Text("Click"),
            ),
          ),
          InkWell(
            //Tıklama özelliği ekliyor.
            onTap: () {},
            child: const Text("OnTap"),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 40, right: 40),
                child: Text(
                  "Place Bid",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ))
        ],
      ),
    );
  }
}

/*
* Borders
? CircleBorder()
? RoundedRectangleBorder()
*/