import 'package:flutter/material.dart';

class Gesture extends StatefulWidget {
  const Gesture({super.key});

  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  int numoftap=0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          numoftap++;
        });
      },
      child: Scaffold(
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('tapped '+numoftap.toString()+' times',style: TextStyle(
                  fontSize: 25
                ),),
              GestureDetector(
                onTap: (){
                  setState(() {
                    numoftap++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.yellow[200],
                  child: Text('Tap Here',style: TextStyle(
                    fontSize: 25
                  ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}