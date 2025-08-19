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
            UserAccountsDrawerHeader(accountName: const Text("Sohaib Ch"), accountEmail: const Text("sohaibinfo01@gmail.com"),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person,size: 40,color: Colors.red,),
            ),
            decoration: const BoxDecoration(
              color: Colors.red,
            ),),
            ListTile(
              leading: const Icon(Icons.send),
              title: Text("Sent"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: Text("Drafts"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: Text("Archive"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: Text("Trash"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: Text("Settings"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: Text("logout"),
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
                const SnackBar(content: Text("Message Sent"),
                duration: Duration(seconds: 3),
                backgroundColor: Colors.black45,
              ),
              );
            },
              child: const Text("Send Message"),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              final snackBar = SnackBar(
                content: const Text("Message Deleted"),
              duration: const Duration(seconds: 3),
                backgroundColor: Colors.black87,
                action: SnackBarAction(label: "UNDO",textColor: Colors.yellow,
                    onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Message Restored"),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,),
                  );
                    }),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
                child: const Text("Delete Message"),
            ),
          ],
        ),
      ),
    );
  }
}
