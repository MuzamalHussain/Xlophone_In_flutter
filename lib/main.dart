import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget{

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override

  int num_1=0;
  var num_2=[];

  Color color1= Colors.pink;
  Color color2= Colors.blue;
  Color color3= Colors.orange;
  Color color4= Colors.cyanAccent;
  Color color5= Colors.lightGreenAccent;
  Color color6= Colors.amberAccent;
  Color color7= Colors.purple;

   Xlophone ( int number, Color color){
     return Expanded(
         child: Container(
           height:double.infinity ,
           width: double.infinity,
           child: Card(
             shadowColor: Colors.black,
             elevation: 10,
             color:color,
             child: TextButton(
               child: Text(''),
               onPressed: (){
                 AudioPlayer().play(AssetSource('note$number.wav'));
               },
             ),
           ),
         )
     );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child:Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.white, Colors.grey],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.1, 0.9],
                    tileMode: TileMode.repeated,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 550,
                  width: 360,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                          child:Container(
                            height: double.infinity,
                            width: double.infinity,
                            // color: Colors.blueGrey,
                            child: Column(
                              children: [
                                Xlophone(1, color1 ),
                                Xlophone(2, color2 ),
                                Xlophone(3, color3 ),
                                Xlophone(4, color4 ),
                                Xlophone(5, color5 ),
                                Xlophone(6, color6 ),
                                Xlophone(7, color7 ),

                              ],
                            ),
                          )
                      ),

                    ],
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
