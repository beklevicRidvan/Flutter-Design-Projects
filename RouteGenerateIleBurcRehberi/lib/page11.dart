import 'package:flutter/material.dart';

import 'static_veriler.dart';
class page11 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.blue.withGreen(1).withOpacity(0.8),
          floating: false,
          pinned: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Kova Burcu ve Özellikleri",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            background: Image.asset("assets/kova_buyuk11.png", fit: BoxFit.cover),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            widgetListesiOlustur(10),
          ),
        )
      ],
    );
  }

  List<Widget> widgetListesiOlustur(int index) {
    return [
      Container(
        color: Colors.white,
        child: Card(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                Veriler.BURC_GENEL_OZELLIKLERI[index],
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    ];
  }

}
