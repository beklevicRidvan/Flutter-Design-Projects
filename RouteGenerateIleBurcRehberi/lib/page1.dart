import 'package:flutter/material.dart';

import 'static_veriler.dart';

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.deepOrange.withOpacity(0.7),
          floating: false,
          pinned: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Koç Burcu ve Özellikleri",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            background: Image.asset("assets/koc_buyuk1.png", fit: BoxFit.cover),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            widgetListesiOlustur(0),
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