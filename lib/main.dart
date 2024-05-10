import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page/utils/routes.dart';

void main()
{
   runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor:Colors.blueGrey),

    );
    SystemChrome.setPreferredOrientations([
     // DeviceOrientation.portraitUp
    ],);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,


    );
  }
}



