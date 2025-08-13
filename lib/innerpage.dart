import 'package:flutter/material.dart';
import 'favourites.dart';

class innerpage extends StatefulWidget {
  const innerpage({super.key});

  @override
  State<innerpage> createState() => _innerpageState();
}

class _innerpageState extends State<innerpage> {

  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: 
      Container(
        child: Stack(
          children: [
            Container(
              height: 800,
              width: 400,
              child: Image(image: AssetImage("assets/splash.png")),
            ),Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 40),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12,width: 2)
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset("assets/bicon.png"),
                  )
                ),
                SizedBox(width: 230,),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12,width: 2)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right:5),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          favourite = !favourite;
                        });
                      },
                      icon: Icon(
                        favourite ? Icons.favorite : Icons.favorite_border,
                        color: favourite ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 300),
              height: 550,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(25)
              ),
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 205),
                    child: Image(image: AssetImage("assets/planet1.png")),
                  ),
                ),
                Container(
                  child: Text("Mars",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),),
                ),
                Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Image.asset("assets/i.png"),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Text("Mass",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Text.rich(TextSpan(
                              text: "(",style: TextStyle(color: Colors.white,fontSize: 12),children: [
                                TextSpan(
                                  text: "10",style: TextStyle(color: Colors.white,fontSize: 12)
                                ),WidgetSpan(child: Transform.translate(offset: Offset(2,-8),
                              child: Text("24",textScaleFactor: 0.7,style: TextStyle(color: Colors.white,fontSize: 12),),)),
                              TextSpan(
                                text: "kg)",style: TextStyle(color: Colors.white,fontSize: 12)
                              )
                            ]
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Text("5.97",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          )
                        ],
                      )
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Image.asset("assets/k.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text("Gravity",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text("(m/s2)",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text("9.8",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 54),
                            child: Image.asset("assets/h.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 53),
                            child: Text("Day",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 53),
                            child: Text("(hours)",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 53),
                            child: Text("24",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 45),
                            child: Image.asset("assets/o.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 46),
                            child: Text("Esc. Velocity ",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 47),
                            child: Text("(km/s)",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 47),
                            child: Text("11.2",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Image.asset("assets/s.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Text("Mean",style: TextStyle(color: Colors.white,fontSize: 12),),
                        ),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Text("Temp(C)",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Text("15",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [Container(
                          margin: EdgeInsets.only(left: 30,top: 16),
                          child: Image.asset("assets/w.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 35,top: 10),
                          child: Text("Distance from",style: TextStyle(color: Colors.white,fontSize: 12),),
                        ),
                          Container(
                            margin: EdgeInsets.only(left: 35),
                            child: Text("Sun (106 km)",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 35),
                            child: Text("5.97",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color(0xFFF961FF),
                          Color(0xFF72A5F2),
                          Color(0xFF00E5E5)
                        ],
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          )
                        ]
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => favourites()),
                          );
                        },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                        )
                      ),child: Text("Visit",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
    ),
    ),
                  ],
                )
            ]
    ),
    ),
    );
  }
}
