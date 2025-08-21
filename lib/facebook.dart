import 'package:flutter/material.dart';

class facebook extends StatefulWidget {
  const facebook({super.key});

  @override
  State<facebook> createState() => _facebookState();
}

class _facebookState extends State<facebook> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6,
      child :Scaffold(
      appBar: AppBar(
        title: Text("facebook",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.black87,
        bottom: TabBar(
          isScrollable: false,
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.white,
          indicatorColor: Colors.blueAccent,
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
          Tab( icon: Icon(Icons.home_outlined,size: 30)),
          Tab(icon: Icon(Icons.ondemand_video,size: 30)),
          Tab(icon: Icon(Icons.people_outlined,size: 30)),
          Tab(icon: Icon(Icons.storefront,size: 30)),
          Tab(icon: Icon(Icons.notifications_outlined,size: 30)),
          Tab(icon: Icon(Icons.person,size: 30)),
        ],
        dividerColor: Colors.grey,
        dividerHeight: 3,),
      ),
      )
    );
  }
}
