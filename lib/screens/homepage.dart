import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xfff0f3f8),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200,left:60),
              padding: EdgeInsets.all(15),
              height: 400,
              width: 900,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.black38),],



              ),

              child: Column(

                children: [
                  SizedBox(height:20,),
                  Text('Congratulations🎊🎊 ',style: TextStyle(color: Colors.black,fontSize:32,fontWeight: FontWeight.normal),),
                  SizedBox(height:5,),
                  Text('Your Account is Sucessfull',style: TextStyle(color: Colors.black,fontSize:28,fontWeight: FontWeight.normal),),
                  Container(
                    height:200,
                    width: 200,


                    child:Image.asset('assets/img/2.png') ,
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );



  }
}