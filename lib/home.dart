import 'package:flutter/material.dart';
import 'package:project2/innerpage.dart';
import 'package:project2/profile.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              height: 100,
              width: 150,
              child: Image.asset("assets/earth.png"),
            ),
            SizedBox(height: 50,),
            Text("Routes"),
            Divider(color: Colors.grey,),
            Text("Travel"),
            Divider(color: Colors.grey,),
            Text("Buses"),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body:
          Container(
            child: Stack(
              children: [
                Container(
                  height: 800,
                  width: 400,

                  child: Image(image: AssetImage("assets/splash.png"),fit: BoxFit.cover,),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 45),
                        height: 60,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black45,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black12,width: 2)
                              ),
                              child: Image.asset("assets/icon_settings.png"),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text("    Milky Way",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text("Solar System",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black12,width: 2)
                              ),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> profile())
                                  );
                                },
                              child: Image.asset("assets/icon_profile.png"),
                            ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 80,),
                      Container(
                        height: 240,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 25,
                              margin: EdgeInsets.only(left: 18,top: 10),
                              child: Text("Planet of the day",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 18,),
                              height: 120,
                              width: 250,
                              child:Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 70,
                                        margin: EdgeInsets.only(bottom: 73,left: 10),                                     child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 50,
                                          backgroundImage: AssetImage("assets/planet.png")
                                        ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 120),
                                        height: 15,
                                        width: 50,
                                        child: Text("Mars",style: TextStyle(color: Color(0xff11DCE8),fontWeight: FontWeight.bold),),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        height: 88,
                                        width: 170,
                                        child: Text("Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war.",
                                          style: TextStyle(color: Colors.white,fontSize: 10.5),),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 50),
                                  height: 18,
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 150),
                                    child: Text("Details",
                                      style: TextStyle
                                        (color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 30,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=> innerpage()),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Image.asset("assets/ter.png"),
                                    ),
                                  )
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 450,left: 30),
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,left: 34),
                    child: Text("Solar System",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 500,left: 65
                  ),
                  height: 140,
                  width: 250,
                  child: Text("The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the system's mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially larger and more massive than the terrestrials. ",
                      style: TextStyle(color: Colors.white,fontSize: 9
                      )),
                )
    ],
      ),
    ),
    );
  }
}
