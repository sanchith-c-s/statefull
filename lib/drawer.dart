import 'package:flutter/material.dart';
import 'package:statefull/pages/first_page.dart';
import 'package:statefull/pages/second_page.dart';

class Side extends StatelessWidget {
  const Side({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text('D R A W E R'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.purple[100],
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                child: Text(
                  'L O G O',
                  style: TextStyle(fontSize: 30),
                ),
              )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Page 1',
                style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FirstPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Page 2',
                style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage()));
                },
              ),
            ],
          ),
        ),
      ),
      //endDrawer: Drawer(),
    );
  }
}
