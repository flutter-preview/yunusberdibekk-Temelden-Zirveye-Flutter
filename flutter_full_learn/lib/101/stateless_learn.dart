import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          TittleTextWidget(
            tittle: "A",
          ),
          TittleTextWidget(
            tittle: "B",
          ),
          TittleTextWidget(
            tittle: "C",
          ),
          TittleTextWidget(
            tittle: "D",
          ),
          TittleTextWidget(
            tittle: "E",
          ),
          TittleTextWidget(
            tittle: "F",
          ),
          _CustomContainer(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red),
    );
  }
}

/*
* Stateless nedir?
? Stateless ise bu component sadece alınan datayı görüntülemek için kullanılacak.
? Sayfamda herhangi bir data işlemi yapmayacağım. Sadece veri gösterip showing yapacağım.Sadece gelen item'i göstereceğim.
? Build methodları widgetların oluşturulması için ana yerleri döner bize. Yani her componentin kendine ait build methodu vardır.
? Stateless widget kullanılırken içinde sonradan değer alınması istenmez. Eğer değer vermek istenirse  "  final String? tittle;" şeklinde tanımlanır
ve   "const TittleTextWidget({super.key, this.tittle});"" kısmında belirtilir. Ama bu tanımda tittle gelmeyedebilir. Eğer kesinlikle tittle
gelmesini istiyorsak  String?'deki soru işaretini kaldırıp "const TittleTextWidget({super.key, required this.tittle});" şeklinde yapılır."
* Safaya özgü "fileprivate" özelliği katmak için _TittleTextWidget: Sadece bu sayfadan erişilebilir.
*/

class TittleTextWidget extends StatelessWidget {
  const TittleTextWidget({super.key, required this.tittle});
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
