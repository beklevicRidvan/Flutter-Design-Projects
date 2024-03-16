import 'package:burc_rehberi/404page.dart';
import 'package:burc_rehberi/ana_sayfa.dart';
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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GenerateRoute {
  static Route<dynamic>? _routeOlustur(Widget gidilecekSayfa) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      CupertinoPageRoute(builder: (BuildContext context) => gidilecekSayfa);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      MaterialPageRoute(builder: (BuildContext context) => gidilecekSayfa);
    } else
      CupertinoPageRoute(builder: (context) => gidilecekSayfa);
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        {
          return _routeOlustur(AnaSayfa());
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
