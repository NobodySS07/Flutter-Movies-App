import 'package:movies_app/pages/home.dart';
import 'package:movies_app/pages/batMan.dart';
import 'package:movies_app/pages/hulk.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/pages/superMan.dart';
import 'package:movies_app/pages/captAmerica.dart';
import 'package:movies_app/pages/spiderMan.dart';
import 'package:movies_app/pages/GOT.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/batMan':(context)=>batMan(),
    '/superMan':(context)=>superMan(),
    '/captAmerica':(context)=>captAmerica(),
    '/spiderMan':(context)=>spiderMan(),
    '/hulk':(context)=>hulk(),
    '/GOT':(context)=>GOT(),
  },
));
