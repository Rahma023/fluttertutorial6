import 'dart:ffi';

import 'package:flutter/material.dart';
import './firstpage.dart' as first;
import './secondpage.dart' as second;
import './thirdpage.dart' as third;

void main() {
  runApp(MaterialApp(
    home: MyTabs()
    
  ));
}

class MyTabs extends StatefulWidget{
  @override
  MyTabsState createState()=>MyTabsState();
}

class MyTabsState extends State<MyTabs>with SingleTickerProviderStateMixin{
  late TabController controller;

  @override
  Void initState(){
    super.initState();
    controller=TabController(vsync: this, length: 3);
  }

  @override
  Void dispose(){
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pages"),
        backgroundColor: Colors.brown,
        bottom: const TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.arrow_forward)),
            Tab(icon: Icon(Icons.arrow_downward)),
            Tab(icon: Icon(Icons.arrow_back)),
          ],
        ),

      ),
      bottomNavigationBar: Material(
        color: Colors.deepOrange,
        child: TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.arrow_forward)),
            Tab(icon: Icon(Icons.arrow_downward)),
            Tab(icon: Icon(Icons.arrow_back)),


          ],
        ),
      ),
      
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          first.First(),
          second.Second(),
          third.Third()

        ],
      ),


    );
  }
}

