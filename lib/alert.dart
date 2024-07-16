import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
void _showDialog(){
  showDialog(context: context, builder:(context) {
    return AlertDialog(
      backgroundColor: Colors.amber[100],
      title: Text('Error'),
      content:Text('Content, more info '),
      actions: [
        MaterialButton(onPressed: (){
          
        },
        child: Text('Ok'),),
         MaterialButton(onPressed: (){
          Navigator.pop(context);
        },
        child: Text('Cancel'),)
      ],
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      body: Center(
        child: MaterialButton(
          color: Colors.purple[100],
          onPressed: _showDialog,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'ALERTBOX',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
