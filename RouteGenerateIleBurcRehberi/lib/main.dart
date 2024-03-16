
import 'package:burc_rehberi_on_generate/ana_sayfa.dart';
import 'package:flutter/material.dart';

import 'route_generator.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      onGenerateRoute: GenerateRoute.routeGenerator,


      debugShowCheckedModeBanner: false,

      home: BurclaraGit(),


    );


  }


}

class BurclaraGit extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Center(

        child:ElevatedButton(onPressed: (){
          Navigator.pushNamed(context,'/AnaSayfa');
        }, child: Text("Burçlara Git"))
      ),
    );
  }

}




