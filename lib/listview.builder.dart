import 'package:flutter/material.dart';

class listviewbuilder extends StatefulWidget {
  const listviewbuilder({super.key});

  @override
  State<listviewbuilder> createState() => _listviewbuilderState();
}

class _listviewbuilderState extends State<listviewbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.menu,size: 30,),
        title: Text("Favourite ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.search_outlined,size: 29,color: Colors.black,),
          SizedBox(width: 10,),
          Icon(Icons.settings,size: 28,color: Colors.black,),
          SizedBox(width: 15,),
        ],
      ),
      body: ListView.builder(
          itemCount: 500,
          itemBuilder: (context, index){
        return ListTile(
          leading: Icon(Icons.favorite,color: Colors.red,),
          title: Text("Favourite Items_",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          subtitle: Text("Item No. $index ",style: TextStyle(color: Colors.grey),),
        );
      }),
    );
  }
}
