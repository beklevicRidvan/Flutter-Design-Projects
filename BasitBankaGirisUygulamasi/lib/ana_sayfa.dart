import 'package:flutter/material.dart';
import 'package:flutter_son_kisimlar/banka_sayfasi.dart';
import 'package:flutter_son_kisimlar/bankaya_giris.dart';
import 'package:flutter_son_kisimlar/karsilama_sayfasi.dart';
import 'package:flutter_son_kisimlar/giris_sayfasi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'karsilama_sayfasi.dart';

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  String kullanici = "";

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      kullaniciKontrol(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

    );
  }

  void sayfaAc(BuildContext context, Widget widget) {
    MaterialPageRoute _sayfaYolu =
        MaterialPageRoute(builder: (BuildContext context) {
      return widget;
    });
    Navigator.push(context, _sayfaYolu);
  }



  void kullaniciKontrol(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    kullanici = prefs.getString("tcNo") ?? "";

    if (kullanici.isEmpty) {
      sayfaAc(context, BankaGiris());
    } else {
      sayfaAc(context, BankaSayfasi(kullanici));
    }
  }
}
