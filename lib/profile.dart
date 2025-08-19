import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  bool iscontrol0 = false;
  bool iscontrol1 = false;
  bool iscontrol2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 800,
              width: 500,
              child: Image.asset("assets/splash.png",fit: BoxFit.cover,),
            ),
            SingleChildScrollView(child:
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 70,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/back.png"),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 55,top: 7),
                        height: 40,
                        width: 150,
                        child: Text("My Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 120,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/men.png"),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            height: 25,
                            width: 200,
                            child: Text("Arthur Dent",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            height: 30,
                            width: 200,
                            child: Text("Space adventurer",style: TextStyle(color: Colors.white,fontSize: 11),),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 50),
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/edit.png"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 490,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 30,
                            width: 40,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  iscontrol0 = !iscontrol0;
                                });
                              },
                              icon: Icon(
                                  iscontrol0 ? Icons.toggle_on : Icons.toggle_off,
                                  color: iscontrol0 ? Color(0xff11DCE8) : Colors.grey,
                                  size: 40,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 36),
                            height: 30,
                            width: 200,
                            child: Text("   Show planetary progress",style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 260,
                            width: 260,
                            child: new CircularPercentIndicator(
                              radius: 110,
                              lineWidth: 12.0,
                              percent: 0.87,
                              animation: true,
                              animationDuration: 1000,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: Colors.grey.shade800,
                              startAngle: 90,
                              linearGradient: LinearGradient(colors: [
                                Color(0xFFF961FF),
                                Color(0xFF72A5F2),
                                Color(0xFF00E5E5)
                              ]),
                              center: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 55,left: 35),
                                    height: 50,
                                    width: 100,
                                    child: Text("Personal progress",style: TextStyle(color: Colors.white,fontSize: 17,),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 27),
                                    height: 62,
                                    width: 140,
                                    child: Text("87.1%",style: TextStyle(color: Color(0xff11DCE8),fontSize: 50,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 30,
                                width: 30,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      iscontrol1 = !iscontrol1;
                                    });
                                  },
                                  icon: Icon(
                                    size: 30,
                                    Icons.check_box_outlined,
                                    color: iscontrol1 ? Color(0xff11DCE8) : Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                height: 30,
                                width: 200,
                                child: Text("    Show me in Planet Rating",style: TextStyle(color: Colors.white,),),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 30,
                                width: 30,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      iscontrol2 = !iscontrol2;
                                    });
                                  },
                                  icon: Icon(
                                    size: 30,
                                    Icons.check_box_outlined,
                                    color: iscontrol2 ? Color(0xff11DCE8) : Colors.grey,
                                  ),
                                ),
                              ), 
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                height: 30,
                                width: 200,
                                child: Text("    Notifications",style: TextStyle(color: Colors.white,),),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
            )
          ],
        ),
      ),

    );
  }
}
