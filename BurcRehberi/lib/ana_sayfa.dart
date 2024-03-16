import 'package:burc_rehberi/page1.dart';
import 'package:burc_rehberi/page10.dart';
import 'package:burc_rehberi/page11.dart';
import 'package:burc_rehberi/page12.dart';
import 'package:burc_rehberi/page2.dart';
import 'package:burc_rehberi/page3.dart';
import 'package:burc_rehberi/page4.dart';
import 'package:burc_rehberi/page5.dart';
import 'package:burc_rehberi/page6.dart';
import 'package:burc_rehberi/page7.dart';
import 'package:burc_rehberi/page8.dart';
import 'package:burc_rehberi/page9.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'static_veriler.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(

        slivers: [
          SliverAppBar(
            backgroundColor: Colors.pinkAccent,
            title: Text(Veriler.APP_NAME,style: TextStyle(color: Colors.white),),
          ),


          SliverList(delegate: SliverChildListDelegate(
            [

              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    burcListesiOlustur(context, 0,page1()),
                    burcListesiOlustur(context, 1,page2()),
                    burcListesiOlustur(context, 2,page3()),
                    burcListesiOlustur(context, 3,page4()),
                    burcListesiOlustur(context, 4,page5()),
                    burcListesiOlustur(context, 5,page6()),
                    burcListesiOlustur(context, 6,page7()),
                    burcListesiOlustur(context, 7,page8()),
                    burcListesiOlustur(context, 8,page9()),
                    burcListesiOlustur(context, 9, page10()),
                    burcListesiOlustur(context, 10, page11()),
                    burcListesiOlustur(context, 11, page12()),


                  ],
                ),
              ),

            ]
          ),
          )
        ],

    );
  }

  Widget burcListesiOlustur(BuildContext context, int index,Widget gidilecekSayfa) {
    return Card(
      child: ListTile(
        onTap: () {

          SayfayaGit(context,gidilecekSayfa);
        },
        title: Text(
          Veriler.BURC_ADLARI[index],
          style: TextStyle(fontSize: 22),
        ),
        subtitle: Text(Veriler.BURC_TARIHLERI[index]),
        leading: CircleAvatar(
            foregroundImage: AssetImage("assets/images${index + 1}.png"),
            backgroundColor: Colors.white54,
            radius: 30),
        trailing: IconButton(
            icon: Icon(
              Icons.navigate_next_outlined,
              size: 35,
              color: Colors.pinkAccent,
            ),
            onPressed: () {}),
      ),
    );
  }
  void SayfayaGit(BuildContext context,Widget gidilecekSayfa){
    CupertinoPageRoute sayfaYolu = CupertinoPageRoute(builder: (BuildContext context) {
      return gidilecekSayfa;
    });
  Navigator.push(context, sayfaYolu);
}

}
