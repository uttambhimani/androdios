import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectt/ahome.dart';
import 'package:projectt/asteper.dart';
import 'package:projectt/ihome.dart';
import 'package:projectt/steperprovider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
      MultiProvider(
        providers: [
          ListenableProvider<stepperProvider>(create: (context)=>stepperProvider()),
        ],
        child:android(),
      )
  );
}
Widget android(){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'as',
    routes: {
      '/':(context)=>A_home(),
      'as':(context)=>A_Steper(),
    },
  );
}
Widget ios(){
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context)=>I_Home(),
    },
  );
}