import 'package:flutter/material.dart';
import 'package:uygulama_orneklerim1/pages/kategoriler_layout/birinci_uygulama.dart';
import 'package:uygulama_orneklerim1/pages/kayit_formu_tasarim/dropdown_kapsamli_uygulama.dart';
import 'package:uygulama_orneklerim1/pages/listview_ornegi_ticaret/ikinci_uygulama.dart';
import 'package:uygulama_orneklerim1/pages/listview_ornegi_tasitlar/list_uygulamasi.dart';
import 'package:uygulama_orneklerim1/pages/sarki_uygulamasi/sarki_listesi.dart';
import 'package:uygulama_orneklerim1/pages/giris_ekrani_tasarim/ucuncu_uygulama.dart';
import 'package:uygulama_orneklerim1/pages/basit_vucut_kite_indeksi_hesaplama/vucut_kitle_indeksi.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UcuncuUygulama(),
    );
  }
}
