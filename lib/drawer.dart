import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName:  Text("Sohaib Ch"), accountEmail:  Text("sohaibinfo01@gmail.com"),
            currentAccountPicture:  CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person,size: 40,color: Colors.red,),
            ),
            decoration:  BoxDecoration(
              color: Colors.red,
            ),),
            ListTile(
              leading:  Icon(Icons.send),
              title: Text("Sent"),
              onTap: (){},
            ),
            ListTile(
              leading:  Icon(Icons.send),
              title: Text("Drafts"),
              onTap: (){},
            ),
            ListTile(
              leading:  Icon(Icons.send),
              title: Text("Archive"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Trash"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Settings"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Logout"),
              onTap: (){},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(content: Text("Message Sent"),
                duration: Duration(seconds: 3),
                backgroundColor: Colors.black45,
              ),
              );
            },
              child:  Text("Send Message"),
            ),
             SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              final snackBar = SnackBar(
                content:  Text("Message Deleted"),
              duration:  Duration(seconds: 3),
                backgroundColor: Colors.black87,
                action: SnackBarAction(label: "UNDO",textColor: Colors.yellow,
                    onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text("Message Restored"),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,),
                  );
                    }),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
                child:  Text("Delete Message"),
            ),
          ],
        ),
      ),
    );
  }
}
