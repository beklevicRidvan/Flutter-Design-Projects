  import 'package:burc_rehberi_on_generate/ana_sayfa.dart';
  import 'package:burc_rehberi_on_generate/main.dart';
  import 'package:burc_rehberi_on_generate/page1.dart';
  import 'package:burc_rehberi_on_generate/page10.dart';
  import 'package:burc_rehberi_on_generate/page11.dart';
  import 'package:burc_rehberi_on_generate/page12.dart';
  import 'package:burc_rehberi_on_generate/page2.dart';
  import 'package:burc_rehberi_on_generate/page3.dart';
  import 'package:burc_rehberi_on_generate/page4.dart';
  import 'package:burc_rehberi_on_generate/page5.dart';
  import 'package:burc_rehberi_on_generate/page6.dart';
  import 'package:burc_rehberi_on_generate/page7.dart';
  import 'package:burc_rehberi_on_generate/page8.dart';
  import 'package:burc_rehberi_on_generate/page9.dart';
  import 'package:burc_rehberi_on_generate/page_404.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/foundation.dart';
  import 'package:flutter/cupertino.dart';


  class GenerateRoute {
    static Route<dynamic>? _routeOlustur(Widget gidilecekSayfa) {
      if (defaultTargetPlatform == TargetPlatform.iOS) {

       return CupertinoPageRoute(builder: (context) => gidilecekSayfa);
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        return MaterialPageRoute(builder: (context) => gidilecekSayfa);
      } else
        return CupertinoPageRoute(builder: (context) => gidilecekSayfa);
    }

    static Route<dynamic>? routeGenerator(RouteSettings settings) {
      switch (settings.name) {
        case '/':
          {
            return _routeOlustur(BurclaraGit());
          }

        case '/AnaSayfa':{
          return   _routeOlustur(AnaSayfa());
        }
        case '/page1':
          {
            return _routeOlustur(page1());
          }
        case '/page2':
          {
            return _routeOlustur(page2());
          }
        case '/page3':
          {
            return _routeOlustur(page3());
          }
        case '/page4':
          {
            return _routeOlustur(page4());
          }
        case '/page5':
          {
            return _routeOlustur(page5());
          }
        case '/page6':
          {
            return _routeOlustur(page6());
          }
        case '/page7':
          {
            return _routeOlustur(page7());
          }
        case '/page8':
          {
            return _routeOlustur(page8());
          }
        case '/page9':
          {
            return _routeOlustur(page9());
          }
        case '/page10':
          {
            return _routeOlustur(page10());
          }
        case '/page11':
          {
            return _routeOlustur(page11());
          }
        case '/page12':
          {
            return _routeOlustur(page12());
          }

        default:
          return _routeOlustur(Page404());
      }
    }
  }
