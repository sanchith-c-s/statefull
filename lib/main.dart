import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
 
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int _randomNum=2;

   void _makeRandomNumber(){
    setState(() {
      _randomNum=Random().nextInt(1000)+1;
    });
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'random number',
            style: GoogleFonts.josefinSans(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.red,
          toolbarHeight: 30,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child:Center(
                child: Text(
                  'Random number: $_randomNum',
                  style: GoogleFonts.josefinSans(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed:  _makeRandomNumber,
        child: Icon(Icons.autorenew),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,),
      ),
    );
  }
}
