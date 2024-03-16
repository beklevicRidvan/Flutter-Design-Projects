import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,centerTitle: true,title: Text("Page Not Found",style:TextStyle(color: Colors.red)),),
      body: Center(
        child: Image.asset("assets/404hatasi.png",fit: BoxFit.cover),
      ),
    );
  }
}
