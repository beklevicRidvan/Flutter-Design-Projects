import 'package:flutter/material.dart';
import 'package:uygulama_orneklerim1/pages/sarki_uygulamasi/sarki_sayfasi.dart';
import '../../models/sarkilar.dart';

class SonUygulama extends StatelessWidget {
  final List<Sarkilar> _sarkiListesi = <Sarkilar>[
    Sarkilar("AraTurka Faslı", "Ceza"),
    Sarkilar("Ders Al", "Ceza"),
    Sarkilar("Analog", "Ceza"),
    Sarkilar("10MG", "Motive"),
    Sarkilar("Yalancı Bahar", "Selin"),
    Sarkilar("Ölü", "Contra"),
    Sarkilar("Gibi", "Hidra"),
    Sarkilar("Söyleyin", "Ebru Gündeş"),
    Sarkilar("Kaktüs", "Norm Ender"),
    Sarkilar("Bazen2", "Vice"),
  ];

  final String _bosluk = "                ";

  SonUygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.black45,
            Colors.green.shade900,
            Colors.green.shade100,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/witcher.png"),
                  ),
                  const Text(
                    "Lady Galadriel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      _ikinciSayfayiAc(context);
                    },
                    icon: const Icon(
                      Icons.navigate_next,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Listelerim",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey.shade600),
                    ),
                    Text(
                      "Paylaşılan",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey.shade600),
                    ),
                    const Text(
                      "Beğenilen",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/ceza1.png"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _sarkiListesi[0].sarkiAdi,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                _sarkiListesi[0].sarkiYazari,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/ceza2.png"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${_sarkiListesi[1].sarkiAdi}              ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                _sarkiListesi[1].sarkiYazari,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/ceza3.png"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${_sarkiListesi[2].sarkiAdi}               ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                _sarkiListesi[2].sarkiYazari,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/motive.jpg"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${_sarkiListesi[3].sarkiAdi}$_bosluk ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                "${_sarkiListesi[3].sarkiYazari}  ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/selin.jpg"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${_sarkiListesi[4].sarkiAdi}    ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                "${_sarkiListesi[4].sarkiYazari} ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/contra.jpg"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${_sarkiListesi[5].sarkiAdi}$_bosluk        ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                _sarkiListesi[5].sarkiYazari,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/hidra.png"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${_sarkiListesi[6].sarkiAdi}$_bosluk       ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                _sarkiListesi[6].sarkiYazari,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/ebru.png"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _sarkiListesi[7].sarkiAdi + _bosluk,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                _sarkiListesi[7].sarkiYazari,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/norm.png"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${_sarkiListesi[8].sarkiAdi}$_bosluk    ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                _sarkiListesi[8].sarkiYazari,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900.withOpacity(0.4),                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/vice.png"),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${_sarkiListesi[9].sarkiAdi}$_bosluk   ",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                _sarkiListesi[9].sarkiYazari,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 45,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _ikinciSayfayiAc(BuildContext context) {
    MaterialPageRoute sayfaYolu =
        MaterialPageRoute(builder: (BuildContext context) {
      return const IkinciSayfa();
    });
    Navigator.push(context, sayfaYolu).then((gelenVeri) {
      if (gelenVeri != null) {
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade900,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/eminem11.png"),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Godzilla" "              ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    "Eminem",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ],
              ),
              Icon(
                Icons.play_arrow_outlined,
                color: Colors.white,
                size: 45,
              ),
              Icon(
                Icons.favorite_outline,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        );
      }
    });
  }
}
