import 'package:flutter/material.dart';
import 'package:project2/home.dart';
import 'package:project2/listview.dart';
import 'package:project2/profile.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
    child:
      Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("TabBar",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        bottom:
        TabBar(
            tabs: [
          Tab(text: "Profile", icon: Icon(Icons.person,color: Colors.white,),),
          Tab(text: "Home",icon: Icon(Icons.home,color: Colors.white,),),
          Tab(text: "Setting",icon: Icon(Icons.settings,color: Colors.white,),)
        ]),
      ),
        body: TabBarView(
            children: [
          profile(),
          home(),
          listview()
            ]),
      )
    );
  }
}