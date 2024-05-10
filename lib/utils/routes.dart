import 'dart:js';

import 'package:flutter/material.dart';
import 'package:login_page/screens/homepage.dart';
import 'package:login_page/screens/page1.dart';

import '../screens/gamil_login_page.dart';



class AppRoutes{
  static Map <String, Widget Function(BuildContext)> routes = {

        '/':(context)=>const Loginpage(),
        '/longin':(context)=>const Login2(),
        '/home':(context)=>const HomePage(),

  };

}
