import 'package:flutter/material.dart';

class safearea extends StatefulWidget {
  const safearea({super.key});

  @override
  State<safearea> createState() => _safeareaState();
}

class _safeareaState extends State<safearea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          children: [Flexible(
            flex: 1,
            child: Container(
              height: 230,
              width: 330,
              color: Colors.orange,
              child: Center(child: Text("Planets",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
            ),
          ),
             Container(
              height: 200,
              width: 330,
              color: Colors.purpleAccent,
              child: Row(
                children: [
                  Expanded(child: Container(
                    color: Colors.blueGrey,
                    child: Text(" Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System.",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  )),
                  Expanded(child: Container(
                    color: Colors.grey,
                    child: Image.asset("assets/mars.png"),
                  ))
                ],
              ),
              ),
            Container(
              height: 230,
              width: 330,
              color: Colors.blue,
              child: Center(child: Text("Mars is the fourth Planet.",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
            )
          ],
        ),
      )),
    );
  }
}
