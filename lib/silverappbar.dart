import 'package:flutter/material.dart';

class Silver extends StatelessWidget {
  const Silver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            //title: Text('S I L V E R B A R'),
            expandedHeight: 300,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(background:Container(
              color: Colors.pink,
              
            ) ,
            title: Text('S I L V E R B A R'),
            ),
            
          ),
         SliverToBoxAdapter(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
               child: Container(
                height: 400,
                color: Colors.deepPurple,
               ),
             ),
           ),
         ),
          SliverToBoxAdapter(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
               child: Container(
                height: 400,
                color: Colors.deepPurple,
               ),
             ),
           ),
         ) ,
          SliverToBoxAdapter(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
               child: Container(
                height: 400,
                color: Colors.deepPurple,
               ),
             ),
           ),
         ) 
        ],
      ),
    ) ;
  }
}