import 'package:flutter/material.dart';

class display extends StatefulWidget {
  const display({super.key});

  @override
  State<display> createState() => _displayState();
}

class _displayState extends State<display> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 400,
        color: Colors.white38,
        child: Column(
          children: [
            Container(
              height: 50,
            width: 400,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 30,
                    width: 80,
                    child: Image.asset("assets/user.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50,top: 23),
                    height: 30,
                    width: 150,
                    child: Text("BELIEVER",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 22),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 30,
                    width: 80,
                    child: Image.asset("assets/set.png"),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 330,
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  suffixIcon: Icon(Icons.mic),
                  filled: true,
                  fillColor: Colors.white38,
                  enabledBorder: OutlineInputBorder(
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey, width: 1
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 140,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(image: AssetImage("assets/block.png"),fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 30,
              width: 400,
              child: Text("Explore",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 110,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(image: AssetImage("assets/sing.jpg"),fit: BoxFit.cover)
                        ), child: Text("SINGING",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
                SizedBox(width: 40,),
                Container(
                  height: 150,
                  width: 150,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(image: AssetImage("assets/dance.jpeg"),fit: BoxFit.cover)
                          ), child: Text("DANCING",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ],
            ),
        Row(
          children: [
            Container(
              height: 150,
              width: 150,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 110,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(image: AssetImage("assets/gym.jpg"),fit: BoxFit.cover)
                      ), child: Text("FITNESS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
            SizedBox(width: 40,),
            Container(
              height: 150,
              width: 150,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 110,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(image: AssetImage("assets/sport.jpg"),fit: BoxFit.cover)
                      ), child: Text("SPORTS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 150,
              width: 150,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 110,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(image: AssetImage("assets/music.jpg"),fit: BoxFit.cover)
                      ), child: Text("MUSICAL INSTRUMENTS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
            Container(
              child: Icon(Icons.favorite_border,
                  color: isFavourite == 1 ?  Colors.red: Colors.black
              ),
            )
      ],
    ),
    ],
    ),
    ),
    );
  }
}
