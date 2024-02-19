//import 'dart:js';

import 'package:bradkiln/landing.dart';
import 'package:bradkiln/login.dart';
import 'package:bradkiln/register.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
     initialRoute : 'login',
    routes: {
      'login': (context)=> const MyLogin(),
      'register':(context) => const MyRegister(),
      'landing':(context) => const MyLanding()
      
    },
  ));
}