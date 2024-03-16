import 'package:bootcamp_1/Sabitler/sabitler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {




  @override
  Widget build(BuildContext context) {

    MediaQueryData ekranBilgisi = MediaQuery.of(context);



    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisiligi = ekranBilgisi.size.width;

    var d = AppLocalizations.of(context);

      debugPrint(ekranYuksekligi.toString());
    return Scaffold(
        appBar: buildAppBar(),
         body:Container(
           padding: EdgeInsets.symmetric(horizontal: 15),
           child: buildColumn(ekranYuksekligi,d),
         ) ,
    );
  }

  Column buildColumn(double ekranYuksekligi,AppLocalizations? d) {
    return Column(
           crossAxisAlignment: CrossAxisAlignment.start,

           children: [

             Container(
                 padding: EdgeInsets.only(top: ekranYuksekligi/50),
                 child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(d!.pizzaBaslik,style: TextStyle(color: Sabitler.anaRenk,fontSize: ekranYuksekligi/20,fontWeight: FontWeight.bold),)
               ],
             )),
             Container(
               padding: EdgeInsets.only(top: ekranYuksekligi/100),

               child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Image.asset("Data/Assets/pizza_resim.png",fit: BoxFit.cover,)],),
             ),

             Container(
               padding: EdgeInsets.only(top: ekranYuksekligi/40),

               child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
               ElevatedButton(onPressed: (){}, child: Text(d.peynirYazi,style: TextStyle(color:Colors.white,fontSize: ekranYuksekligi/50),),style:ElevatedButton.styleFrom(backgroundColor: Sabitler.anaRenk,elevation: 10,shadowColor: Colors.grey,padding: EdgeInsets.symmetric(horizontal: 15)),),
               ElevatedButton(onPressed: (){}, child: Text(d.sucukYazi,style: TextStyle(color:Colors.white,fontSize: ekranYuksekligi/50),),style:ElevatedButton.styleFrom(backgroundColor: Sabitler.anaRenk,elevation: 10,shadowColor: Colors.grey,padding: EdgeInsets.symmetric(horizontal: 15)),),
               ElevatedButton(onPressed: (){}, child: Text(d.zeytinYazi,style: TextStyle(color:Colors.white,fontSize: ekranYuksekligi/50),),style:ElevatedButton.styleFrom(backgroundColor: Sabitler.anaRenk,elevation: 10,shadowColor: Colors.grey,padding: EdgeInsets.symmetric(horizontal: 15)),),
               ElevatedButton(onPressed: (){}, child: Text(d.biberYazi,style: TextStyle(color:Colors.white,fontSize: ekranYuksekligi/50),),style:ElevatedButton.styleFrom(backgroundColor: Sabitler.anaRenk,elevation: 10,shadowColor: Colors.grey,padding: EdgeInsets.symmetric(horizontal: 15)),),
             ],),),

             Container(
               padding: EdgeInsets.only(top: ekranYuksekligi/40),

               child:Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(d.teslimatSure,textAlign: TextAlign.center,style: TextStyle(fontSize: ekranYuksekligi/25,color: Sabitler.yaziRenk2),),
               ],
             ),),

             Container(
               padding: EdgeInsets.only(top: ekranYuksekligi/40),

               child:Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(d.teslimatBaslik,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Sabitler.anaRenk),),
               ],
             ),),
             Container(
               padding: EdgeInsets.only(top: ekranYuksekligi/40),

               child:Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(d.pizzaAciklama,textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Sabitler.yaziRenk2),),
               ],
             ),),

             Container(
               padding: EdgeInsets.only(top: ekranYuksekligi/25),

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(child: Text("\$ 5.98",style: TextStyle(color: Sabitler.anaRenk,fontSize: ekranYuksekligi/20,fontWeight: FontWeight.bold),),),
                   ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),backgroundColor: Sabitler.anaRenk,shape: LinearBorder()),child: Text(d.buttonYazi,style: TextStyle(color: Colors.white,fontSize: 20),))

                 ],
               ),
             ),
           ],
         );
  }

  AppBar buildAppBar(){
    return AppBar(centerTitle: true,backgroundColor: Sabitler.anaRenk,title: Text("Pizza",style: TextStyle(fontFamily:Sabitler.myFontFamily,fontSize: 24,fontWeight: FontWeight.bold,color: Sabitler.yaziRenk1),),);
  }
}
