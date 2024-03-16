import 'package:flutter/material.dart';
class KarsilamaSayfasi extends StatefulWidget {

  String kullanici ="";

  KarsilamaSayfasi(this.kullanici);

  @override
  State<KarsilamaSayfasi> createState() => _KarsilamaSayfasiState();
}

class _KarsilamaSayfasiState extends State<KarsilamaSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(title: Text("Karşılama Sayfası",style: TextStyle(fontSize: 30),),backgroundColor: Colors.blueAccent,),


      body: Center(
        child: Text("Hoşgeldiniz ${widget.kullanici}",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
