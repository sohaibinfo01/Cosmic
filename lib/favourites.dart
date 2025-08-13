import 'package:flutter/material.dart';
import 'package:project2/profile.dart';

class favourites extends StatefulWidget {
  const favourites({super.key});

  @override
  State<favourites> createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {

  bool mercuryFav = false;
  bool venusFav = false;
  bool earthFav = false;
  bool marsFav = false;


  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            // Background
            Container(
              height: 800,
              width: 400,
              child: Image.asset("assets/splash.png", fit: BoxFit.cover),
            ),
            SingleChildScrollView(
              child:
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        height: 60,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.black45
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black12, width: 2)
                              ),
                              child: Image.asset("assets/icon_settings.png"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50, top: 12),
                              height: 40,
                              width: 100,
                              child: Text("Favourites", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black12, width: 2)
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
                      SizedBox(height: 20,),
                      Container(
                        height: 140,
                        width: 320,
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 30),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/mercury.png"),
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, right: 160),
                                  height: 18,
                                  width: 60,
                                  child: Text("Mercury", style: TextStyle(
                                      fontSize: 14, color: Color(0xff11DCE8)),),
                                ),
                                SizedBox(height: 3,),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  height: 44,
                                  width: 200,
                                  child: Text(
                                    "Mercury is the smallest planet in the Solar System and the closest to the Sun.",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 150),
                                      height: 30,
                                      width: 50,
                                      child: Text("Details", style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 7),
                                      height: 20,
                                      width: 20,
                                      child: Image.asset("assets/ter.png"),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 50,),
                                  height: 50,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        mercuryFav = !mercuryFav;
                                      });
                                    },
                                    icon: Icon(
                                      mercuryFav ? Icons.favorite : Icons.favorite_border,
                                      color: mercuryFav ? Colors.red : Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 140,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle
                          ),
                          child: Image.asset("assets/venus.png"),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, right: 160),
                              height: 18,
                              width: 60,
                              child: Text("Venus", style: TextStyle(color: Color(
                                  0xff11DCE8),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),),
                            ),
                            SizedBox(height: 3,),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 50,
                              width: 200,
                              child: Text("Venus is the second planet from the Sun and is Earth's closest planetary neighbor.", style: TextStyle(color: Colors.white,
                                  fontSize: 11),),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 150),
                                  height: 30,
                                  width: 50,
                                  child: Text("Details", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 7),
                                  height: 20,
                                  width: 20,
                                  child: Image.asset("assets/ter.png"),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 50,),
                              height: 50,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle
                              ),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    venusFav = !venusFav;
                                  });
                                },
                                icon: Icon(
                                  venusFav ? Icons.favorite : Icons.favorite_border,
                                  color: venusFav ? Colors.red : Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ]
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 140,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle
                          ),
                          child: Image.asset("assets/earth.png"),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, right: 160),
                              height: 18,
                              width: 60,
                              child: Text("Earth", style: TextStyle(color: Color(
                                  0xff11DCE8),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),),
                            ),
                            SizedBox(height: 3,),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 50,
                              width: 200,
                              child: Text("Earth is an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System.", style: TextStyle(color: Colors.white,
                                  fontSize: 10.5),),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 150),
                                  height: 30,
                                  width: 50,
                                  child: Text("Details", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 7),
                                  height: 20,
                                  width: 20,
                                  child: Image.asset("assets/ter.png"),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 50,),
                              height: 50,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle
                              ),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    earthFav = !earthFav;
                                  });
                                },
                                icon: Icon(
                                  earthFav ? Icons.favorite : Icons.favorite_border,
                                  color: earthFav ? Colors.red : Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ]
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 140,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle
                          ),
                          child: Image.asset("assets/mars.png"),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, right: 160),
                              height: 18,
                              width: 60,
                              child: Text("Mars", style: TextStyle(color: Color(
                                  0xff11DCE8),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),),
                            ),
                            SizedBox(height: 3,),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 44,
                              width: 200,
                              child: Text("Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System", style: TextStyle(color: Colors.white,
                                  fontSize: 11),),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 150),
                                  height: 30,
                                  width: 50,
                                  child: Text("Details", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 7),
                                  height: 20,
                                  width: 20,
                                  child: Image.asset("assets/ter.png"),
                                )
                              ],
                            )
                          ],
                        ),
                         Row(
                           children: [
                             Container(
                               margin: EdgeInsets.only(bottom: 50,),
                               height: 50,
                               width: 20,
                              decoration: BoxDecoration(
                                   color: Colors.transparent,
                                  shape: BoxShape.circle
                               ),
                               child: IconButton(
                                 onPressed: () {
                                   setState(() {
                                     marsFav = !marsFav;
                                   });
                                 },
                                 icon: Icon(
                                   marsFav ? Icons.favorite : Icons.favorite_border,
                                   color: marsFav ? Colors.red : Colors.white,
                                 ),
                               ),
                           )
                           ],
                         )
                       ]
                   ),
                 ),
               ],
             ),
             ),
           ],
         ),
      ),

    );
  }
}