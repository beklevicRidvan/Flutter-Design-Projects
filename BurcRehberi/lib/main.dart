import 'package:burc_rehberi/404page.dart';
import 'package:burc_rehberi/ana_sayfa.dart';
import 'package:burc_rehberi/page1.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(



      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: AnaSayfa(),
      ),

    );


  }
}




