import 'package:flutter/material.dart';

void main() {
  runApp(const TabsApp());
}

class TabsApp extends StatelessWidget {
  const TabsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('Tabs demo'),
        bottom: TabBar(tabs: [
          Tab(child:Icon(Icons.directions_bike)),
          Tab(child:Icon(Icons.car_rental)),
          Tab(child:Text('End')),
        ]),),
        body: TabBarView(children: [
          Center(child: Text('one'),
          ),
          Center(child: Text('two'),),
          Center(child: Text('end'),)
        ],)
      ),
      
      ),
    );
  }
}

