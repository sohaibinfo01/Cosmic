import 'package:flutter/material.dart';

class Listtile
extends StatefulWidget {
  const Listtile({super.key});

  @override
  State<Listtile> createState() => _listtileState();
}

class _listtileState extends State<Listtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: 800,
        width: 450,
        color: Colors.white70,
        child: Column(
          children: [
            Row(
             children: [
               Container(
                 margin: EdgeInsets.only(top: 35,left: 30),
                 height: 50,
                 width: 130,
                 child: Text("Whatsapp",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
               ),
               SizedBox(width: 100,),
               Container(
                 margin: EdgeInsets.only(top: 18),
                 height: 60,
                 width: 30,
                 child: Image.asset("assets/camera.png"),
               ),
               SizedBox(width: 20,),
               Container(
                 margin: EdgeInsets.only(top: 18),
                 height: 60,
                 width: 30,
                 child: Image.asset("assets/dots.png"),
               )
             ], 
            ),
            Container(
              height: 50,
              width: 340,
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Ask Meta AI or search",
                  filled: true,
                  fillColor: Colors.white38,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                        color: Colors.green, width: 2
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Container(
              height: 600,
              width: 400,
              child:  ListView(
                children: [
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("Wasif",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("Sai",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("Rehan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("Thik h",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("Mani bro",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("Oka sir",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("Baba ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("Axha",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("Bhi Awais",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("Slam bro",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("Huzaifa Akbar",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("Oka bro",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("Asad",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("G jnb",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("𝐇𝐚𝐟𝐢𝐳 𝐌𝐨𝐛𝐢𝐥𝐞𝐬 𝐁𝐡𝐚𝐠𝐭𝐚𝐧𝐰𝐚𝐥𝐚",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("السلام علیکم و رحمتہ اللّه",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("𝐇𝐚𝐟𝐢𝐳 𝐌𝐨𝐛𝐢𝐥𝐞𝐬 𝐁𝐡𝐚𝐠𝐭𝐚𝐧𝐰𝐚𝐥𝐚",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("السلام علیکم و رحمتہ اللّه",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("𝐇𝐚𝐟𝐢𝐳 𝐌𝐨𝐛𝐢𝐥𝐞𝐬 𝐁𝐡𝐚𝐠𝐭𝐚𝐧𝐰𝐚𝐥𝐚",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("السلام علیکم و رحمتہ اللّه",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("𝐇𝐚𝐟𝐢𝐳 𝐌𝐨𝐛𝐢𝐥𝐞𝐬 𝐁𝐡𝐚𝐠𝐭𝐚𝐧𝐰𝐚𝐥𝐚",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("السلام علیکم و رحمتہ اللّه",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  ListTile(
                    leading: Image.asset("assets/men.png"),
                    title: Text("𝐇𝐚𝐟𝐢𝐳 𝐌𝐨𝐛𝐢𝐥𝐞𝐬 𝐁𝐡𝐚𝐠𝐭𝐚𝐧𝐰𝐚𝐥𝐚",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    subtitle: Text("السلام علیکم و رحمتہ اللّه",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                ],
              ),
            )
              ],
            ),
        ),
    );
  }
}
