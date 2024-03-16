import 'package:flutter/material.dart';
import 'package:flutter_son_kisimlar/ana_sayfa.dart';
import 'package:flutter_son_kisimlar/banka_sayfasi.dart';
import 'package:flutter_son_kisimlar/bankaya_giris.dart';
import 'package:flutter_son_kisimlar/giris_sayfasi.dart';

void main(){
runApp(MyApp());
}


class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:AnaSayfa(),
    );
  }
}
