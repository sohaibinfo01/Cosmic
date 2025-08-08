import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 800,
              width: 400,
              child: Image.asset("assets/splash.png"),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black12,width: 2)
                        ),
                        child: Image.asset("assets/back.png"),
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
                            margin: EdgeInsets.only(left: 20,top: 20),
                            height: 30,
                            width: 40,
                            child: Image.asset("assets/control.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 32),
                            height: 30,
                            width: 140,
                            child: Text("Show planetary progress",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 260,
                            width: 260,
                            color: Colors.blue,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            child: Image.asset("assets/on.png"),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
